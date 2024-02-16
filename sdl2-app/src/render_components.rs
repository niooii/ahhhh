use core::panic;
use std::sync::Arc;

use sdl2::render::Texture;

pub struct RenderComponent {

    texture_path: String,
    x: u32,
    y: u32,
    z: u32,
    on_click: Option<Box<dyn Fn()>>

}

impl RenderComponent {

    pub fn on_click_fn(&self) -> Option<&Box<dyn Fn()>> {
        self.on_click.as_ref()
    }

    pub fn texture_path(&self) -> &String {
        &self.texture_path
    }

}

#[derive(Default)]
pub struct RenderComponentBuilder {
    
    texture: Option<String>,
    x: Option<u32>,
    y: Option<u32>,
    z: Option<u32>,
    on_click: Option<Box<dyn Fn()>>

}

impl RenderComponentBuilder {
    pub fn new() -> Self {
        Self::default()
    }

    pub fn texture(mut self, texture_path: &str) -> Self {
        self.texture = Some(texture_path.to_string());
        self
    }

    pub fn x(mut self, x: u32) -> Self {
        self.x = Some(x);
        self
    }

    pub fn y(mut self, y: u32) -> Self {
        self.y = Some(y);
        self
    }

    pub fn z(mut self, z: u32) -> Self {
        self.z = Some(z);
        self
    }

    pub fn on_click(mut self, on_click: Box<dyn Fn()>) -> Self {
        self.on_click = Some(on_click);
        self
    }

    pub fn build(self) -> RenderComponent {
        RenderComponent {
            texture_path: self.texture.unwrap_or_else(|| panic!("need path to texture for rendercomponent")),
            x: self.x.unwrap_or(0),
            y: self.y.unwrap_or(0),
            z: self.z.unwrap_or(0),
            on_click: self.on_click
        }
    }
}