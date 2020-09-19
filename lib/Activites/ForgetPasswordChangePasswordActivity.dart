import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';

class ForgetPasswordChangePassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ForgetPasswordChangePasswordClickLiser();
  }
}

class ForgetPasswordChangePasswordClickLiser extends State<ForgetPasswordChangePassword> {
  String MyName = '';
  String name = '';

  void OnChangeValue(String text) {
    setState(() {
      MyName = 'OnChange :  $text';
    });
  }

  void OnClickBtn() {
    setState(() {
      name = ' your email is ';
    });
  }

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
          new Container(
            child:   new ListView(
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
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
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
//                                new Image.asset('img/ic_group_add.png',
//                                    width: 35.0,
//                                    height: 35.0,
//                                    alignment: Alignment.center),
                             //   new Padding(padding: EdgeInsets.all(10.0)),
                                new Text(Flutkart.ForgetpasswordChangePassword,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      color: Colors.deepPurple,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic
                                  ) ,),
                                new Padding(padding: EdgeInsets.all(10.0)),
                                new Container(
                                  padding: EdgeInsets.all(5.0),
                                  alignment: Alignment.center,
                                  child: new Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        new Image(
                                            image: AssetImage(
                                                'img/edit_text_image.png')),
                                        new TextField(
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            autocorrect: false,
                                            decoration: new InputDecoration.collapsed(
                                                hintText: Flutkart.Change_password,
                                                hintStyle: new TextStyle(
                                                    fontSize: 13.0,
                                                    fontStyle: FontStyle.normal))),
                                      ]
                                  ),
                                ),
                                new Padding(padding: EdgeInsets.all(5.0)),
                                new Container(
                                  padding: EdgeInsets.all(5.0),
                                  alignment: Alignment.center,
                                  child: new Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        new Image(
                                            image: AssetImage(
                                                'img/edit_text_image.png')),
                                        new TextField(
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            autocorrect: false,
                                            decoration: new InputDecoration.collapsed(
                                                hintText: Flutkart.Confirm_password,
                                                hintStyle: new TextStyle(
                                                    fontSize: 13.0,
                                                    fontStyle: FontStyle.normal))),
                                      ]
                                  ),
                                ),
                                new Padding(padding: EdgeInsets.all(15.0)),
                                new InkWell(
                                  onTap: ()=> Navigator.of(context).pushNamed('/LoginCliant'),
                                  child: new Container(
                                    width: 200,
                                    height: 35,
                                    decoration: new BoxDecoration(
                                      color: Colors.blueAccent,
                                      border: new Border.all(
                                          color: Colors.blueAccent, width: 1.0),
                                      borderRadius: new BorderRadius.circular(25.0),
                                    ),
                                    child: new Center(
                                      child: new Text(
                                        Flutkart.Btn_Confirm_password,
                                        style: new TextStyle(
                                            fontSize: 17.0, color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                new Padding(padding: EdgeInsets.all(10.0)),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}