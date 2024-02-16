use sdl2_app::{app::{App, AppState}, render_components::{RenderComponent, RenderComponentBuilder}};

fn main() -> Result<(), String> {
    let mut app = App::new("chess thing", 800, 800)?;
    app.set_clear_color(255 ,255 ,255 ,255);

    {
        let test = RenderComponentBuilder::new()
        .texture("textures/White/Bishop.png")
        .x(200)
        .y(200)
        .z(0);

        let thing = test.build();

        app.add_component("test", thing);
    }

    loop {
        let state: AppState = app.draw_frame();

        if state == AppState::RequestedQuit {
            break;
        }
    }

    Ok(())

}
