class MatchCard {
  int redColor = 0;
  int greenColor = 0;
  int blueColor = 0;
  double marginBottom = 0;
  double marginTop = 0;
  double marginLeft = 0;
  double marginRight = 0;

  MatchCard(int red, int green, int blue, {double marginBottom = 10.0, double marginTop = 10.0,
    double marginLeft = 10.0, double marginRight = 10.0}) {
    redColor = red;
    greenColor = green;
    blueColor = blue;
    this.marginBottom = marginBottom;
    this.marginTop = marginTop;
    this.marginLeft = marginLeft;
    this.marginRight = marginRight;
  }
}

