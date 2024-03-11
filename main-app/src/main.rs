use chess::board::BitBoard;
use sdl2_app::{app::{App, AppState}, render_components::{RenderComponent, RenderComponentBuilder}};

fn main() -> Result<(), String> {

    let bb = BitBoard::new();
    bb.print();

    Ok(())

}
