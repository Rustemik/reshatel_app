import 'dart:math';

import 'package:flutter/material.dart';
import 'package:reshatel_app/styles/styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _answer = false;
  Random _rng = Random();

  void _incrementCounter() {
    var value = _rng.nextBool();
    setState(() {
      _answer = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 115,
        elevation: 0,
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                //border: Border.all(color: Colors.blue, width: 3),
                image: DecorationImage(
                  image: AssetImage("assets/images/1111.png"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                ),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Text(
                    'РЕШАТЕЛЬ',
                    style: appBarWHITETitleStyle,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Expanded(
            child: Container(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/images/2222.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.dstATop),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Align(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'ДА',
                                style: appBarTitleStyle,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: AnimatedRotation(
                                  turns: _answer ? 360 : 540 / 360,
                                  duration: Duration(seconds: 1),
                                  child: Image.asset("assets/images/3333.png"),
                                ),
                              ),
                              Text(
                                'НЕТ',
                                style: appBarTitleStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 80),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              side: BorderSide(width: 3, color: Colors.black),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: const EdgeInsets.all(20),
                              primary: Colors.black,
                              backgroundColor: Colors.transparent),
                          onPressed: _incrementCounter,
                          child: Text("GO! >>>", style: appBarTitleStyle),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FlareActor(String s, {String? animation}) {}
}
