import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:kids_app/listItems.dart';

void main() => runApp(MyApp());

class CoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
//      appBar: AppBar(
//        centerTitle: true,
//        title: Text('kids app'),
//      ),
      body: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              new Image.asset(
                'assets/images/kids1.jpg',
                width: size.width,
                height: size.height,
                fit: BoxFit.fill,
              ),
              BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 5, sigmaY: 3),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ))
            ],
          ),
          Center(
              child: FlatButton(
            child: _animatedButtonUI,
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => ListItems()));
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
          )),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CoverPage(),
    );
  }
}

Widget get _animatedButtonUI => Container(
      height: 70,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 30.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0000FF),
              Color(0xFFFF3500),
            ],
          )),
      child: Center(
        child: Text(
          'START',
          style: TextStyle(
              fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
