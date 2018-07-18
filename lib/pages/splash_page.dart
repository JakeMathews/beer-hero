import 'dart:async';

import 'package:beer_hero/routes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SplashPageState();
  }
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    final duration = new Duration(seconds: 2);
    return new Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(TRENDING);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        color: Colors.white,
        child: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                'Beer Hero',
                style: new TextStyle(
                  fontSize: 50.0,
                  color: Colors.black,
                ),
              ),
              new Padding(padding: EdgeInsets.all(25.0)),
              new Image(image: new AssetImage('assets/beer-mug.png'))
            ],
          ),
        ),
      ),
    );
  }
}
