import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';


class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileTabClick();
  }


}

class ProfileTabClick extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
      Container(
      child: new DecoratedBox(
      decoration: new BoxDecoration(
      image: new DecorationImage(
          image: new AssetImage("img/background_home_screen.png"),
      fit: BoxFit.fill,
    ),
    ),
    ),
    ),
            new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(padding: EdgeInsets.only(bottom: 125.0)),
                  new Card(
                    elevation: 7.0,
                    margin: EdgeInsets.all(25.0),
                    child: new Container(
                      padding: EdgeInsets.all(15.0),
                      child: new Column(
                          children: <Widget>[
                            new Padding(padding: EdgeInsets.all(10.0)),
                            new InkWell(
                              onTap: () => null,
                              child: new Container(
                                child: new Text(
                                  Flutkart.NameUser,
                                  style: new TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.deepPurpleAccent,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            new Padding(padding: EdgeInsets.all(10.0)),
                            new InkWell(
                              onTap: () => null,
                              child: new Container(
                                child: new Text(
                                  Flutkart.EmailUser,
                                  style: new TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.deepPurpleAccent,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            new Padding(padding: EdgeInsets.all(25.0)),
                            new InkWell(
                              onTap: () => null,
                              child: new Container(
                                child: new Text(
                                  Flutkart.TextGives,
                                  style: new TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.deepPurple,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            new Padding(padding: EdgeInsets.all(10.0)),
                            new InkWell(
                              onTap: () => null,
                              child: new Container(
                                child: new Text(
                                  Flutkart.GivesNumbers,
                                  style: new TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.deepPurple,
                                      fontStyle: FontStyle.italic),
                                ),
                              ),
                            ),
                            new Padding(padding: EdgeInsets.all(10.0)),

                          ]
                      ),
                    ),
                  ),
                ]
            ),

    ]

    ),
    );





  }

}


