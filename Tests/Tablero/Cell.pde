/*
 * This is the class for each sell on the
 * board.
 */
class Cell {

  int x, y, cWidth, cHeight;
  color cColor;

  // Simple constructor, coordinates and color
  Cell(int x, int y, int cWidth, int cHeight, color cColor) {
    this.x = x;
    this.y = y;
    this.cWidth = cWidth;
    this.cHeight = cHeight;
    this.cColor = cColor;
  }

  void draw() {
    // Draw the cell
    fill(cColor);
    rect(x, y, cWidth, cHeight);
  }
}
