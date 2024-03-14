#[derive(Default)]
pub struct BitBoard {
    board: u64
}

impl BitBoard {

    pub fn print(&self) {
        for rank in 0..8 {
            for file in 0..8 {
                let square_idx = rank * 8 + file;

                print!(" {} ", self.board & (0b1 << square_idx));
            }
            println!();
        }
    }

    pub fn make_move(&mut self, board_idx: u16) {
        self.board |= 0b1 << board_idx;
    }

}