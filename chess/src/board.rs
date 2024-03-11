pub struct BitBoard {
    board: u64
}

impl BitBoard {

    pub fn new() -> Self {
        Self {
            board: 0
        }
    }
    
    pub fn print(&self) {
        for rank in 0..8 {
            for file in 0..8 {
                let square_idx = rank * 8 + file;

                print!(" {} ", self.board & (0b1 << square_idx));
            }
            println!();
        }
    }

}