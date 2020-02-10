import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'match_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CardSwiper(
        title: 'Flutter Card Stack',
        height: 540,
        width: 340,
        threshold: 25,
        onCardClicked: (cardPosition){
          print("Card Position "+ cardPosition.toString());
        },
        onLeftSwipe: (cardPosition) {
          print("Card Position "+ cardPosition.toString());
        },
        onUpSwipe: (cardPosition) {
          print("Card Position "+ cardPosition.toString());
        },
        onDownSwipe: (cardPosition) {
          print("Card Position "+ cardPosition.toString());
        },
        cardBgColor: Colors.grey,
        onRightSwipe: (cardPosition) {
          print("Card Position "+ cardPosition.toString());
        },
        childWidgetList: <Widget>[
          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test1",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test2",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test3",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test4",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test5",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test6",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test7",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test9",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

          Container(
            height: 100.0,
            width: 300.0,
            color: Colors.white70,
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Text Test8",
                  style: TextStyle(fontSize: 24.0, color: Colors.redAccent),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}

class CardSwiper extends StatefulWidget {
  CardSwiper(
      {Key key,
      this.title,
      this.height = 540,
      this.width = 340,
      this.threshold = 20,
      this.positionTop = 10.0,
      this.positionBottom = 10.0,
      this.positionLeft = 10.0,
      this.positionRight = 10.0,
      this.cardBgColor,
      @required this.childWidgetList,
      this.expectedObjectInstance,
      this.onDownSwipe(cardPosition),
      this.onLeftSwipe(cardPosition),
      this.onUpSwipe(cardPosition),
      this.onRightSwipe(cardPosition),
      this.onCardClicked(cardPosition)})
      : super(key: key);

  final String title;
  final double height;
  final double width;
  final double threshold;

  final double positionTop;

  final double positionBottom;

  final double positionLeft;

  final double positionRight;

  Color cardBgColor;

  List<Widget> childWidgetList;

  final Function onRightSwipe;
  final Function onLeftSwipe;
  final Function onDownSwipe;
  final Function onUpSwipe;
  final Function onCardClicked;

  List dataList = [];
  dynamic expectedObjectInstance;

  @override
  _CardSwiperState createState() => _CardSwiperState();
}

class _CardSwiperState extends State<CardSwiper> {
  List<Widget> cardList;

  void _removeCard(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardList = _getCardDeck(onRightSwipe: (cardPosition) {
      if (widget.onRightSwipe != null) {
        widget.onRightSwipe(cardPosition);
      }
//      print("Right swipe");
    }, onLeftSwipe: (cardPosition) {
      if (widget.onLeftSwipe != null) {
        widget.onLeftSwipe(cardPosition);
      }
//      print("Left swipe");
    }, onUpSwipe: (cardPosition) {
      if (widget.onUpSwipe != null) {
        widget.onUpSwipe(cardPosition);
      }
//      print("Up swipe");
    }, onDownSwipe: (cardPosition) {
      if (widget.onDownSwipe != null) {
        widget.onDownSwipe(cardPosition);
      }
//      print("Down swipe");
    }, onCardClicked: (cardPosition) {
      if (widget.onCardClicked != null) {
        widget.onCardClicked(cardPosition);
      }
//      print("Card Clicked");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: widget.height + 16,
          width: widget.width,
          padding: EdgeInsets.only(bottom: 16.0),
          child: Stack(
              alignment: Alignment.center,
              children: cardList.length > 0
                  ? cardList
                  : <Widget>[
                      Center(
                        child: Text("There is no list data !!"),
                      )
                    ]),
        ),
      ),
    );
  }

  List<Widget> _getCardDeck(
      {onRightSwipe( int cardPosition),
      onLeftSwipe(int cardPosition),
      onCardClicked(int cardPosition),
      onUpSwipe(int cardPosition),
      onDownSwipe(int cardPosition)}) {
    List<Widget> cardList = new List();
if(widget.childWidgetList!= null && widget.childWidgetList.length>0) {
  for (int cardIndex = widget.childWidgetList.length-1; cardIndex ==0 ; cardIndex--) {
    cardList.add(
        Positioned(
      bottom: cardIndex == 0
          ? widget.positionBottom
          : cardIndex == 1
          ? widget.positionBottom * 2
          : cardIndex >= 2 ? widget.positionBottom * 3 : widget.positionBottom,
      top: widget.positionTop,
      left: widget.positionLeft,
      right: widget.positionRight,
      child: Draggable(
        onDragEnd: (drag) {
          bool upDownNeutral = false;
          bool leftRightNeutral = false;

          if ((drag.offset.dx > (widget.width / 10) + widget.threshold) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped Right");
            onRightSwipe(cardIndex);

            if (widget.onRightSwipe != null) {
              widget.onRightSwipe(cardIndex);
            }
          } else if ((drag.offset.dx <
              -(widget.width / 10) + widget.threshold) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped Left");
            onLeftSwipe(cardIndex);
            if (widget.onLeftSwipe != null) {
              widget.onLeftSwipe(cardIndex);
            }
          } else {
//            print("Card left/right Neutral");
            leftRightNeutral = true;
          }

          if ((drag.offset.dy > (widget.height / 5) + widget.threshold * 3) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped down");
            onDownSwipe(cardIndex);
            if (widget.onDownSwipe != null) {
              widget.onDownSwipe(cardIndex);
            }
          } else if ((drag.offset.dy <
              -(widget.height / 5) + widget.threshold) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped up");
            onUpSwipe(cardIndex);
            if (widget.onUpSwipe != null) {
              widget.onUpSwipe(cardIndex);
            }
          } else {
//            print("Card up/down Neutral");
            upDownNeutral = true;
          }

          if (drag.offset.distance > widget.threshold * 10) {
            _removeCard(cardIndex);
          }

          if (upDownNeutral &&
              leftRightNeutral &&
              drag.offset.distance < widget.threshold * 8) {
//            print("Card Clicked");
            onCardClicked(cardIndex);
          }
        },
        childWhenDragging: Container(),
        feedback: Card(
          elevation: 1.0,
          color: widget.cardBgColor ?? Colors.grey.shade100,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            alignment: Alignment.center,
            width: widget.width,
            height: widget.height,
            child: widget.childWidgetList[cardIndex] ?? SizedBox(),
          ),
        ),
        child: Card(
          elevation: 1.0,
          color: widget.cardBgColor ?? Colors.grey.shade100,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            alignment: Alignment.center,
            width: widget.width,
            height: widget.height,
            child: widget.childWidgetList[cardIndex] ?? SizedBox(),
          ),
        ),
      ),
    ));
  }
}else{
  cardList.add(Positioned(
    bottom: widget.positionBottom,
    top: widget.positionTop,
    left: widget.positionLeft,
    right: widget.positionRight,
    child: Draggable(
      onDragEnd: (drag) {
        bool upDownNeutral = false;
        bool leftRightNeutral = false;

        if ((drag.offset.dx > (widget.width / 10) + widget.threshold) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped Right");
          onRightSwipe(0);

          if (widget.onRightSwipe != null) {
            widget.onRightSwipe(0);
          }
        } else if ((drag.offset.dx <
            -(widget.width / 10) + widget.threshold) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped Left");
          onLeftSwipe(0);
          if (widget.onLeftSwipe != null) {
            widget.onLeftSwipe(0);
          }
        } else {
//          print("Card left/right Neutral");
          leftRightNeutral = true;
        }

        if ((drag.offset.dy > (widget.height / 5) + widget.threshold * 3) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped down");
          onDownSwipe(0);
          if (widget.onDownSwipe != null) {
            widget.onDownSwipe(0);
          }
        } else if ((drag.offset.dy <
            -(widget.height / 5) + widget.threshold) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped up");
          onUpSwipe(0);
          if (widget.onUpSwipe != null) {
            widget.onUpSwipe(0);
          }
        } else {
//          print("Card up/down Neutral");
          upDownNeutral = true;
        }

        if (drag.offset.distance > widget.threshold * 10) {
//          _removeCard(0);
        }

        if (upDownNeutral &&
            leftRightNeutral &&
            drag.offset.distance < widget.threshold * 8) {
//          print("Card Clicked");
          onCardClicked(0);
        }
      },
      childWhenDragging: Container(),
      feedback: Card(
        elevation: 1.0,
        color: widget.cardBgColor ?? Colors.grey.shade100,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          child: Text("Please add childWidget data list !!") ,
        ),
      ),
      child: Card(
        elevation: 1.0,
        color: widget.cardBgColor ?? Colors.grey.shade100,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          alignment: Alignment.center,
          width: widget.width,
          height: widget.height,
          child: Text("Please add childWidget data list !!") ,
        ),
      ),
    ),
  ));
}

    return cardList;
  }

}
