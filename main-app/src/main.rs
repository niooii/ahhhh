use chess::board::BitBoard;

fn main() -> Result<(), String> {

    let mut bb = BitBoard::default();
    bb.make_move(4);
    bb.make_move(5);
    bb.print();

    Ok(())

}
