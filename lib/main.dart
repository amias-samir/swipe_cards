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
      home: MyHomePage(
        title: 'Flutter Card Stack',
        height: 540,
        width: 340,
        threshold: 25,
        onCardClicked: () {},
        onLeftSwipe: () {},
        onUpSwipe: () {},
        cardBgColor: Colors.grey,
        onRightSwipe: () {},
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

class MyHomePage extends StatefulWidget {
  MyHomePage(
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
      this.dataList,
      this.expectedObjectInstance,
      this.onDownSwipe,
      this.onLeftSwipe,
      this.onUpSwipe,
      this.onRightSwipe,
      this.onCardClicked})
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
    cardList = _getMatchCard(onRightSwipe: () {
      if (widget.onRightSwipe != null) {
        widget.onRightSwipe();
      }
//      print("Right swipe");
    }, onLeftSwipe: () {
      if (widget.onLeftSwipe != null) {
        widget.onLeftSwipe();
      }
//      print("Left swipe");
    }, onUpSwipe: () {
      if (widget.onUpSwipe != null) {
        widget.onUpSwipe();
      }
//      print("Up swipe");
    }, onDownSwipe: () {
      if (widget.onDownSwipe != null) {
        widget.onDownSwipe();
      }
//      print("Down swipe");
    }, onCardClicked: () {
      if (widget.onCardClicked != null) {
        widget.onCardClicked();
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

  List<Widget> _getMatchCard(
      {onRightSwipe(),
      onLeftSwipe(),
      onCardClicked(),
      onUpSwipe(),
      onDownSwipe()}) {
    List<Widget> cardList = new List();
if(widget.childWidgetList!= null && widget.childWidgetList.length>0) {
  for (int x = 0; x < widget.childWidgetList.length; x++) {
    cardList.add(
        Positioned(
      bottom: x == 0
          ? widget.positionBottom
          : x == 1
          ? widget.positionBottom * 2
          : x >= 2 ? widget.positionBottom * 3 : widget.positionBottom,
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
            onRightSwipe();

            if (widget.onRightSwipe != null) {
              widget.onRightSwipe();
            }
          } else if ((drag.offset.dx <
              -(widget.width / 10) + widget.threshold) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped Left");
            onLeftSwipe();
            if (widget.onLeftSwipe != null) {
              widget.onLeftSwipe();
            }
          } else {
//            print("Card left/right Neutral");
            leftRightNeutral = true;
          }

          if ((drag.offset.dy > (widget.height / 5) + widget.threshold * 3) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped down");
            onDownSwipe();
            if (widget.onDownSwipe != null) {
              widget.onDownSwipe();
            }
          } else if ((drag.offset.dy <
              -(widget.height / 5) + widget.threshold) &&
              drag.offset.distance > widget.threshold * 10) {
//            print("Card swiped up");
            onUpSwipe();
            if (widget.onUpSwipe != null) {
              widget.onUpSwipe();
            }
          } else {
//            print("Card up/down Neutral");
            upDownNeutral = true;
          }

          if (drag.offset.distance > widget.threshold * 10) {
            _removeCard(x);
          }

          if (upDownNeutral &&
              leftRightNeutral &&
              drag.offset.distance < widget.threshold * 8) {
//            print("Card Clicked");
            onCardClicked();
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
            child: widget.childWidgetList[x] ?? SizedBox(),
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
            child: widget.childWidgetList[x] ?? SizedBox(),
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
          onRightSwipe();

          if (widget.onRightSwipe != null) {
            widget.onRightSwipe();
          }
        } else if ((drag.offset.dx <
            -(widget.width / 10) + widget.threshold) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped Left");
          onLeftSwipe();
          if (widget.onLeftSwipe != null) {
            widget.onLeftSwipe();
          }
        } else {
//          print("Card left/right Neutral");
          leftRightNeutral = true;
        }

        if ((drag.offset.dy > (widget.height / 5) + widget.threshold * 3) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped down");
          onDownSwipe();
          if (widget.onDownSwipe != null) {
            widget.onDownSwipe();
          }
        } else if ((drag.offset.dy <
            -(widget.height / 5) + widget.threshold) &&
            drag.offset.distance > widget.threshold * 10) {
//          print("Card swiped up");
          onUpSwipe();
          if (widget.onUpSwipe != null) {
            widget.onUpSwipe();
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
          onCardClicked();
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
