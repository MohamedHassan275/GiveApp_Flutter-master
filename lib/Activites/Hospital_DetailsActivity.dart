import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';
import 'package:url_launcher/url_launcher.dart';

class Hospital_Details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Hospital_DetailsClickLister();
  }
}

class Hospital_DetailsClickLister extends State<Hospital_Details> {
  final String phone = 'tel:01156043662';

  callPhone() async {
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not Call Phone';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Container(
        child:  new ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            new Column(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new Column(
                      children: <Widget>[
                        new Padding(padding: EdgeInsets.all(25.0)),
                        new Image.asset('img/logo.png',
                            width: 500.0,
                            height: 150.0,
                            alignment: Alignment.center),
                        new Padding(padding: EdgeInsets.all(10.0)),
                      ],
                    )
                  ],
                ),
                new Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Column(
                    children: <Widget>[
                      new Text(
                        Flutkart.HospitalName,
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic),
                      ),
                      new Padding(padding: EdgeInsets.all(5.0)),
                      new Text(
                        Flutkart.HospitalAddress,
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic),
                      ),
                      new Padding(padding: EdgeInsets.all(5.0)),
                      new Text(
                        Flutkart.HospitalAddress2,
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic),
                      ),
                      new Padding(padding: EdgeInsets.all(15.0)),
                      new Text(
                        Flutkart.HospitalDetailsText,
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      new Padding(padding: EdgeInsets.all(5.0)),
                      new Text(
                        Flutkart.HospitalDetails,
                        textDirection: TextDirection.rtl,
                        style: new TextStyle(
                            fontSize: 17.0,
                            color: Colors.deepPurple,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
                new Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(15.0),
                  child: new Column(
                    children: <Widget>[
                      new FloatingActionButton.extended(
                        onPressed: callPhone,
                        icon: new Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.deepPurple,
                        label: new Text(
                          Flutkart.Call,
                          style: new TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
