import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'destination_place.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

class LeaderboardPage extends StatefulWidget {
  LeaderboardPage({Key key}) : super(key: key);

  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {
  TextEditingController textSearch = TextEditingController();
  var myList = loadDestination();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          body: new Column(
            children: <Widget>[
              Container(
                child: _view(),
              ),
              Container(
                child: _createListView(),
              ),
              // _firstSearch ? _createListView() : _createFilteredListView()
            ],
          ),
        ),
      ),
    );
  }

  Widget _view() {
    return Stack(children: <Widget>[
      Container(
        height: 360.0,
        color: Color(0xffff6468),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: Text(
                'Leaderboard',
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              centerTitle: true,
            ),
            Align(alignment: Alignment(-0.9, 0), child: StackItem()),
            Align(
                alignment: Alignment(0, -0.4),
                child: StackItem(
                  large: true,
                )),
            Align(alignment: Alignment(0.9, 0), child: StackItem()),
          ],
        ),
      ),
    ]);
  }

  Widget _createListView() {
    return Container(
      child: Flexible(
        child: new ListView.builder(
          itemCount: myList.length,
          itemBuilder: (BuildContext context, int index) {
            final Destination listitem = myList[index];
            return Stack(
              children: [
                new Container(
                  margin: EdgeInsets.fromLTRB(90.0, 5.0, 20.0, 5.0),
                  height: 120.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 160.0,
                          child: Text(
                            listitem.title,
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  bottom: 15.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      height: 10,
                      width: 100.0,
                      image: AssetImage(
                        listitem.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ], // ),
            );
          },
        ),
      ),
    );
  }
}

class StackItem extends StatelessWidget {
  const StackItem({Key key, this.large = false}) : super(key: key);
  final bool large;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: large ? 90 : 100,
      height: large ? 90 : 100.0,
      child: Stack(
        children: <Widget>[
          ClipPolygon(
            sides: 5,
            borderRadius: 8.0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(3.0),
              child: ClipPolygon(
                  sides: 5,
                  borderRadius: 8.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assests/sweta.jpg"),
                  )),
            ),
          ),
          Align(
            alignment: Alignment(0.9, -0.9),
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0)),
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "2",
                  style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
