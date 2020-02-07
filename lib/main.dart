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
        threshold: 20,
        onCardClicked: (){},
        onLeftSwipe: (){},
        onUpSwipe: (){},
        onRightSwipe: (){},),
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

  final Function onRightSwipe;
  final Function onLeftSwipe;
  final Function onDownSwipe;
  final Function onUpSwipe;
  final Function onCardClicked;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> cardList;

  Widget childWidget;

  void _removeCard(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardList = _getMatchCard(
        onRightSwipe: () {
          if(widget.onRightSwipe != null){widget.onRightSwipe();}
      print("Right swipe");
    },
        onLeftSwipe: () {
          if(widget.onLeftSwipe != null){widget.onLeftSwipe();}
      print("Left swipe");
    },
        onUpSwipe: () {
          if(widget.onUpSwipe != null){widget.onUpSwipe();}
      print("Up swipe");
    },
        onDownSwipe: () {
          if(widget.onDownSwipe != null){widget.onDownSwipe();}
      print("Down swipe");
    },
        onCardClicked: () {
          if(widget.onCardClicked != null){widget.onCardClicked();}
      print("Card Clicked");
    });
  }

  @override
  Widget build(BuildContext context) {
    childWidget = Container(
      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      padding: EdgeInsets.all(50.0),
      child: Column(
        children: <Widget>[
          Text(
            "Text Test",
          )
        ],
      ),
    );
    return Scaffold(
      body: Center(
          child: Container(
            height: widget.height+16,
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
      {
        onRightSwipe(),
      onLeftSwipe(),
      onCardClicked(),
      onUpSwipe(),
      onDownSwipe()}) {
    List<MatchCard> cards = new List();
    cards.add(MatchCard(255, 0, 0, marginBottom: 10));
    cards.add(MatchCard(0, 255, 0, marginBottom: 20));
    cards.add(MatchCard(0, 255, 255, marginBottom: 30));
    cards.add(MatchCard(255, 0, 255, marginBottom: 30));
    cards.add(MatchCard(0, 0, 255, marginBottom: 30));
    cards.add(MatchCard(255, 255, 0, marginBottom: 30));
    cards.add(MatchCard(255, 0, 0, marginBottom: 30));
    cards.add(MatchCard(0, 255, 0, marginBottom: 30));
    cards.add(MatchCard(0, 255, 255, marginBottom: 30));
    cards.add(MatchCard(255, 0, 255, marginBottom: 30));
    cards.add(MatchCard(0, 0, 255, marginBottom: 30));
    cards.add(MatchCard(255, 255, 0, marginBottom: 30));

    List<Widget> cardList = new List();

    for (int x = 0; x < cards.length; x++) {
      cardList.add(Positioned(
        bottom: cards[x].marginBottom,
        top: cards[x].marginTop,
        left: cards[x].marginLeft,
        right: cards[x].marginRight,
        child: Draggable(
          onDragEnd: (drag) {
            if (drag.offset.dx > widget.width / 10) {
//              print("Card swiped Right");
              onRightSwipe();

              if(widget.onRightSwipe != null){widget.onRightSwipe();}

            } else if (drag.offset.dx < -widget.width / 10) {
//              print("Card swiped Left");
              onLeftSwipe();
              if(widget.onLeftSwipe != null){widget.onLeftSwipe();}

            } else {
//              print("Card left/right Neutral");
            }

            if (drag.offset.dy > (widget.height / 5) + 10) {
//              print("Card swiped down");
              onDownSwipe();
              if(widget.onDownSwipe != null){widget.onDownSwipe();}

            } else if (drag.offset.dy < -(widget.height / 5) + 10) {
//              print("Card swiped up");
              onUpSwipe();
              if(widget.onUpSwipe != null){widget.onUpSwipe();}

            } else {
//              print("Card up/down Neutral");
            }

            if (drag.offset.distance > widget.threshold*10) {
              _removeCard(x);
            }

            if (drag.offset.distance < widget.threshold*10 &&
                (drag.offset.dx < widget.width / 10 ||
                    drag.offset.dx > -widget.width / 10 ||
                    (drag.offset.dy < (widget.height / 5) + 10) ||
                    (drag.offset.dy > -(widget.height / 5) + 10))) {
//              print("Card Clicked");
              onCardClicked();
            }
          },
          childWhenDragging: Container(),
          feedback: Card(
            elevation: 0.0,
            color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor,
                cards[x].blueColor),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              alignment: Alignment.center,
              width: widget.width,
              height: widget.height,
              child: childWidget,
            ),
          ),
          child: Card(
            elevation: 0.0,
            color: Color.fromARGB(255, cards[x].redColor, cards[x].greenColor,
                cards[x].blueColor),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              alignment: Alignment.center,
              width: widget.width,
              height: widget.height,
              child: childWidget,
            ),
          ),
        ),
      ));
    }

    return cardList;
  }
}
