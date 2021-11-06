
class Board {

  final int N_ROW_COL = 8;
  int x, y, bWidth, bHeight;
  // Objects
  Cell board[][]; // for each cell

  Board(int x, int y, int bWidth, int bHeight) {
    // --- Creating the board
    // Board dimentions
    this.x = x;
    this.y = y;
    this.bWidth = bWidth;
    this.bHeight = bHeight;
    // for each cell:
    int cellWidth = this.bWidth/this.N_ROW_COL;
    int cellHeight = this.bHeight/this.N_ROW_COL;
    int colorToSet = 0;
    color cellColors[] = {color(255), color(159, 114, 23)};
    board = new Cell[N_ROW_COL][N_ROW_COL];
    for (int row = 0; row < this.N_ROW_COL; row++) {
      for (int col = 0; col < this.N_ROW_COL; col++) {
        this.board[row][col] = new Cell(this.x + (row*cellWidth), this.y + (col*cellHeight), cellWidth, cellHeight, cellColors[colorToSet]);
        colorToSet = 1 - colorToSet;
      }
      colorToSet = 1 - colorToSet;
    }
  }


  void draw() {
    // Drawing the board.
    for (int row = 0; row < N_ROW_COL; row++) {
      for (int col = 0; col < N_ROW_COL; col++) {
        this.board[row][col].draw();
      }
    }
    // Animation for the mouseOver.
    for (int row = 0; row < N_ROW_COL; row++) {
      for (int col = 0; col < N_ROW_COL; col++) {
        if (this.board[row][col].isMouseOver()) {
          noFill();
          strokeWeight(3);
          stroke(192, 192, 192);
          rect(this.board[row][col].x, this.board[row][col].y, this.board[row][col].cWidth, this.board[row][col].cHeight, this.board[row][col].cornerR, this.board[row][col].cornerR, this.board[row][col].cornerR, this.board[row][col].cornerR);
        }
      }
    }
  }
}
