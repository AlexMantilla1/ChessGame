
Board board;

void setup() {

  size(500, 500);
  board = new Board(50,50,400,400);
  
}


void draw() {

  this.board.draw();
  
}
