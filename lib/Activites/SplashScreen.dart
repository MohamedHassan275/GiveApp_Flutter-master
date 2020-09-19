import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';
import 'package:give_app_flutter/Utils/my_navigator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => MyNavigator.goToIntro(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: new DecoratedBox(
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("img/background_splash.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      new Padding(
                        padding: EdgeInsets.all(35.0),
                      ),
                      new Image.asset('img/logo.png',
                          width: 200.0, height: 200.0,
                          alignment: Alignment.center),
                     new Padding(
                        padding: EdgeInsets.only(top: 25.0),
                      ),
                      Text(
                        Flutkart.SplashText1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0),

                      ),
                      new Padding(padding: EdgeInsets.all(5.0)),
                      Text(
                        Flutkart.SplashText2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0),
                      )
                    ],
                  ),
                ),
              ),
//              Expanded(
//                flex: 1,
//                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.center,
//                  children: <Widget>[
//                    CircularProgressIndicator(),
//                    Padding(
//                      padding: EdgeInsets.only(top: 20.0),
//                    ),
//                    Text(
//                      Flutkart.store,
//                      softWrap: true,
//                      textAlign: TextAlign.center,
//                      style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          fontSize: 18.0,
//                          color: Colors.deepPurple),
//                    )
//                  ],
//                ),
//              )
            ],
          )
        ],
      ),
    );
  }
}