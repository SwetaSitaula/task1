import 'package:flutter/material.dart';
import 'wherePage.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'Welcome',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Colors.orange[300]),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_right,
                color: Colors.orange[200],
              ),
              onPressed: () {
                {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LeaderboardPage()));
                }
              }),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assests/sweta.jpg"), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
