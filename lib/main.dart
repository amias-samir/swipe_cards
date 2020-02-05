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
        threshold: 210,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.height = 540, this.width = 340, this.threshold = 310,
    this.positionTop = 10.0, this.positionBottom = 10.0, this.positionLeft = 10.0, this.positionRight = 10.0})
      : super(key: key);

  final String title;
  final double height;
  final double width;
  final double threshold ;
  final double positionTop ;
  final double positionBottom ;
  final double positionLeft ;
  final double positionRight ;



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
    cardList = _getMatchCard();
  }

  @override
  Widget build(BuildContext context) {
    childWidget = Container(
      height: widget.height,
      width: widget.width,
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Text(
            "Text Test",
          )
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(bottom: 145.0),
          child: Stack(
            alignment: Alignment.center,
            children: cardList.length > 0? cardList:<Widget>[
              Center(
                child: Text("There is no list data !!"),
              )
            ]
          ),
        ),
      ),
    );
  }

  List<Widget> _getMatchCard() {

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
            (drag.offset.dx > widget.width / 10)
                ? print("Card swiped Right")
                : (drag.offset.dx < -widget.width / 10)
                    ? print("Card swiped Left")
                    : print("Card left/right Neutral");
            (drag.offset.dy > (widget.height / 5) + 10)
                ? print("Card swiped down")
                : (drag.offset.dy < -(widget.height / 5) + 10)
                    ? print("Card swiped up")
                    : print("Card up/down Neutral");

            if (drag.offset.distance > widget.threshold) {
              _removeCard(x);
            }

//            print("Card distance " + drag.offset.distance.toString());
//            print("Card dx " + drag.offset.dx.toString());
//            print("Card dy " + drag.offset.dy.toString());
//            print("Card direction " + drag.offset.direction.toString());

            if (drag.offset.distance < widget.threshold && (drag.offset.dx < widget.width / 10 || drag.offset.dx > -widget.width / 10
             || (drag.offset.dy < (widget.height / 5) + 10) || (drag.offset.dy > -(widget.height / 5) + 10))) {
              print("Card Clicked");
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
