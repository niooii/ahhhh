use std::collections::HashMap;
use std::sync::{Arc, Mutex};

use crate::error::Result;
use crate::render_components::RenderComponent;

use sdl2::{
    self,
    image::{self, InitFlag, LoadTexture, Sdl2ImageContext},
    pixels::Color,
    render::{Canvas, Texture, TextureCreator},
    video::{Window, WindowBuilder, WindowContext},
    EventPump, Sdl, VideoSubsystem,
};
use sdl2::event::Event;

#[derive(PartialEq, Eq)]
pub enum AppState {
    Ok,
    RequestedQuit,
    LowMemory,
}

pub struct App<'a> {
    sdl2_instance: Sdl,
    sdl2_image_instance: Sdl2ImageContext,
    video_subsystem: VideoSubsystem,
    texture_creator: TextureCreator<WindowContext>,
    canvas: Arc<Mutex<Canvas<Window>>>,
    event_pump: Arc<Mutex<EventPump>>,

    // internals
    clear_color: Color,
    render_components: HashMap<String, RenderComponent>,
    texture_map: Arc<Mutex<HashMap<String, Texture<'a>>>>,
}

impl<'a> App<'a> {
    pub fn new(name: &str, w: u32, h: u32) -> Result<Self> {
        let sdl2_instance = sdl2::init()?;
        let video_subsystem = sdl2_instance.video()?;
        let sdl2_image_instance = sdl2::image::init(InitFlag::all())?;
        let window = WindowBuilder::new(&video_subsystem, name, w, h)
            .allow_highdpi()
            .opengl()
            .build()
            .map_err(|e| e.to_string())?;

        let canvas = window.into_canvas().accelerated().build().map_err(|e| e.to_string())?;

        let event_pump = Arc::new(Mutex::new(sdl2_instance.event_pump()?));
        let texture_creator =               canvas.texture_creator();
        let texture_map = Arc::new(Mutex::new(HashMap::new()));

        let canvas = Arc::new(Mutex::new(canvas));

        Ok(Self {
            sdl2_instance,
            sdl2_image_instance,
            video_subsystem,
            canvas,
            texture_creator,
            event_pump,
            clear_color: Color::BLACK,
            render_components: HashMap::new(),
            texture_map,
        })
    }

    pub fn draw_frame(&'a self) -> AppState {
        // events are auto-handled, maybe change later if I need it for any reason
        let mut canvas = self.canvas.lock().unwrap();
        let mut event_pump = self.event_pump.lock().unwrap();
        let mut texture_map = self.texture_map.lock().unwrap();

        for event in event_pump.poll_iter() {
            match event {
                Event::Quit { .. } => return AppState::RequestedQuit,
                Event::MouseButtonDown { .. } => {
                    for (_key, component) in &self.render_components {
                        // todo! check click and component bounds
                        if let Some(callback) = &component.on_click_fn() {
                            callback();
                            print!("called callback fn");
                        }
                    }
                }
                _ => continue,
            }
        }

        canvas.set_draw_color(self.clear_color);
        canvas.clear();

        // render the components
        for (_key, component) in self.render_components.iter() {
            if !texture_map.contains_key(component.texture_path()) {
                texture_map.insert(
                    component.texture_path().clone(),
                    self.texture_creator
                        .load_texture(component.texture_path())
                        .expect("Failed to load texture"),
                );
            }
        }

        canvas.present();

        AppState::Ok
    }

    pub fn add_component(&mut self, unique_id: &str, render_component: RenderComponent) -> Result<()> {
        let id = unique_id.to_string();

        if self.render_components.contains_key(&id) {
            return Err("Duplicate render component key.".into());
        }

        self.render_components.insert(id, render_component);

        Ok(())
    }

    pub fn create_texture(&self, file_name: &str) -> Result<Texture> {
        let tex = self.texture_creator.load_texture(file_name)?;

        Ok(tex)
    }

    pub fn set_clear_color(&mut self, r: u8, g: u8, b: u8, a: u8) {
        self.clear_color = Color::RGBA(r, g, b, a);
    }
}
