/*
 * This is the class for each cell on the
 * board.
 */
class Cell {

  private int x, y, cWidth, cHeight, cornerR;
  private color cColor;
  // owner says the player that owns this cell, 1 or 2 if a piece of the player 1 or 2
  // is in this cell, 0 for no one.
  private int owner = 0;

  // Simple constructor, coordinates and color
  Cell(int x, int y, int cWidth, int cHeight, color cColor) {
    this.x = x;
    this.y = y;
    this.cWidth = cWidth;
    this.cHeight = cHeight;
    this.cColor = cColor;
    this.cornerR = cWidth/10;
  }

  // needed Getters and setters
  int getOwner() {
    return this.owner;
  }
  void setOwner(int newOwner) {
    this.owner = newOwner;
  }

  void drawLetters() {
    // drawing the letters, horizontally
  }
  void  drawNumbers() {
    // drawing the numbers, vertically
  }

  void draw() {
    // Draw the cell
    fill(cColor);
    stroke(0);
    strokeWeight(1);
    rect(x, y, cWidth, cHeight);
    drawLetters();
    drawNumbers();
    
  }

  private boolean isMouseOver() {
    return mouseX > this.x && mouseX < this.x + this.cWidth && mouseY > this.y && mouseY < this.y + this.cHeight;
  }
}
