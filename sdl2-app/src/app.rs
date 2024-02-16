
use std::collections::HashMap;

use crate::error::Result;

use crate::render_components::RenderComponent;
use sdl2::{self, image::{self, InitFlag, LoadTexture, Sdl2ImageContext}, pixels::Color, render::{Canvas, CanvasBuilder, Texture, TextureCreator}, video::{Window, WindowBuilder, WindowContext}, EventPump, Sdl, VideoSubsystem};
use sdl2::event::Event;

#[derive(PartialEq, Eq)]
pub enum AppState {
    Ok,
    RequestedQuit,
    LowMemory
}

pub struct App<'a> {
    sdl2_instance: Sdl,
    sdl2_image_instance: Sdl2ImageContext,
    video_subsystem: VideoSubsystem,
    texture_creator: TextureCreator<WindowContext>,
    canvas: Canvas<Window>,
    event_pump: EventPump,

    // internals
    clear_color: Color,
    render_components: HashMap<String, RenderComponent>,
    texture_map: HashMap<String, Texture<'a>>,
}

impl<'a> App<'a> {
    pub fn new(name: &str, w: u32, h: u32) -> Result<Self> {
        let sdl2_instance = sdl2::init()?;
        let video_subsystem = sdl2_instance.video()?;
        let sdl2_image_instance = sdl2::image::init(InitFlag::all())?;
        let window = WindowBuilder::new(&video_subsystem, name, w, h)
        .allow_highdpi()
        .opengl()
        .build().map_err(|e| e.to_string())?;

        let canvas = window
        .into_canvas()
        .accelerated()
        .build()
        .map_err(|e| e.to_string())?;

        let event_pump = sdl2_instance.event_pump()?;
        
        Ok(
            Self {
                sdl2_instance,
                sdl2_image_instance,
                video_subsystem, 
                texture_creator: canvas.texture_creator(),
                canvas,
                event_pump,
                
                clear_color: Color::BLACK,
                render_components: HashMap::new(),
                texture_map: HashMap::new()
            }
        )

    }
}

impl<'a> App<'a> {
    pub fn draw_frame<'b>(&'a mut self) -> AppState 
    where 'a: 'b
    {
        // events are auto handled, maybe change later if i need it for any reason

        for event in self.event_pump.poll_iter() {
            match event {
                Event::Quit { .. } => return AppState::RequestedQuit,
                Event::MouseButtonDown { which, mouse_btn, clicks, x, y, .. } => {
                    for (_key, component) in &self.render_components {
                        // todo! check click and component bounds
                        if let Some(callback) = &component.on_click_fn() {
                            callback();
                            print!("called callback fn");
                        }
                    }
                },
                _ => continue
            }
        }

        self.canvas.set_draw_color(self.clear_color);
        self.canvas.clear();

        // render the components
        for (_key, component) in self.render_components.iter() {
            if !self.texture_map.contains_key(component.texture_path()) {
                self.texture_map.insert(
                    component.texture_path().clone(), 
                    self.texture_creator.load_texture(
                        component.texture_path()
                    ).expect("Failed to load texture")
                );
            }
        }

        self.canvas.present();

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

impl Drop for App<'_> {
    fn drop(&mut self) {
        self.render_components.clear();
    }
}