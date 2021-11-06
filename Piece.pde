class Piece {

  private PImage picture;
  private int x, y, pWidth, pHeight;
  private boolean live = true;

  Piece(PImage picture, int x, int y, int pHeight) {
    this.picture = picture;
    this.x = x;
    this.y = y;
    this.pHeight = pHeight;
    // resize the picture
    this.pWidth = this.picture.width * (this.pHeight/this.picture.height);
    this.picture.resize(this.pWidth, this.pHeight);
  }

  void draw() {
    if (live) {
      imageMode(CENTER);
      image(picture, x, y);
    }
  }
  
  void kill() {
    this.live = false;
  }
}
