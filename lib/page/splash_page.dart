import 'dart:async';

import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(SplashPage());

}

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashPage>{
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var durasi = Duration(seconds: 4);
    return new Timer(durasi, route);
  }

  route() {

    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => LoginPage()
      ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xffF5591F),
              gradient: LinearGradient(colors: [(new Color(0xff1393aa)),(new Color(0xff1fceee))],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
              )
              ),
          ),
          Center(
            child: Container(
              child: Image.asset('assets/images/logo.jpg')
              ),
          )
        ],
      ),
    );
  }

}