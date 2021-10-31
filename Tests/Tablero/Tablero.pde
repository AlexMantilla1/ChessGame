
Cell testCell;
Cell board[][];
final int N_ROW_COL = 8;
int x, y, bWidth, bHeight;

void setup() {

  size(500, 500);
  this.testCell = new Cell(10, 10, 50, 50, color(0,0,200));

  // --- Creating the board
  // Board dimentions
  this.x = 100;
  this.y = 100;
  this.bWidth = 400;
  this.bHeight = 400;
  // for each cell:
  int cellWidth = this.bWidth/this.N_ROW_COL;
  int cellHeight = this.bHeight/this.N_ROW_COL;
  int colorToSet = 255;
  board = new Cell[N_ROW_COL][N_ROW_COL];
  for (int row = 0; row < this.N_ROW_COL; row++) {
    for (int col = 0; col < this.N_ROW_COL; col++) {
      this.board[row][col] = new Cell(this.x + (row*cellWidth), this.y + (col*cellHeight), cellWidth, cellHeight, color(colorToSet));
      colorToSet = 255 - colorToSet;
      println(this.board[row][col].cColor,'h');
    }
    colorToSet = 255 - colorToSet;
  }
}


void draw() {

  this.testCell.draw();

  for (int row = 0; row < N_ROW_COL; row++) {
    for (int col = 0; col < N_ROW_COL; col++) {
      this.board[row][col].draw();
    }
  }
}
