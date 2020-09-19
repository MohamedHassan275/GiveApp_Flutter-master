import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:give_app_flutter/Utils/flutkart.dart';


class HomeTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeTabBarClick();
  }


}

class HomeTabBarClick extends State<HomeTabBar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: RegisterCliant',
      style: optionStyle,
    ),
    Text(
      'Index 1: Home2',
      style: optionStyle,
    ),
    Text(
      'Index 2: LoginCliant',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
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
    child: new ListView(
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
    children: <Widget>[
    new InkWell(
    onTap: () => null,
    child: new Container(
    child: new Text(
    Flutkart.ChoseHospitalOrSusality1,
    style: new TextStyle(
    fontSize: 19.0,
    color: Colors.blueGrey,
    fontStyle: FontStyle.italic),
    ),
    ),
    ),
    new Padding(padding: EdgeInsets.all(2.0)),
    new InkWell(
    onTap: () => null,
    child: new Container(
    child: new Text(
    Flutkart.ChoseHospitalOrSusality2,
    style: new TextStyle(
    fontSize: 19.0,
    color: Colors.blueGrey,
    fontStyle: FontStyle.italic),
    ),
    ),
    ),
    new Padding(padding: EdgeInsets.all(10.0)),
    new Container(
    padding: EdgeInsets.all(5.0),
    alignment: Alignment.center,
    child: new Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    new InkWell(
    onTap: () => Navigator.of(context).pushNamed('/Charities_Details'),
    child: new Container(
    child: new Image.asset('img/ic_charities_icon.png',
    width: 100.0,
    height: 100.0,
    alignment: Alignment.center,)
    ),
    ),

    new Padding(padding: EdgeInsets.all(10.0)),
    new InkWell(
    onTap: () => Navigator.of(context).pushNamed('/Hospital_Details'),
    child: new Container(
    child: new Image.asset('img/hospital_icon.png',
    width: 100.0,
    height: 100.0,
    alignment: Alignment.center,)
    ),
    ),
    ],
    )

    ),
      new Padding(padding: EdgeInsets.all(5.0)),
      new Container(
          padding: EdgeInsets.all(5.0),
          alignment: Alignment.center,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new InkWell(
                onTap: () => Navigator.of(context).pushNamed('/ProfileScreen'),
                child: new Container(
                    child: new Image.asset('img/profile.png',
                      width: 100.0,
                      height: 100.0,
                      alignment: Alignment.center,)
                ),
              ),

              new Padding(padding: EdgeInsets.all(10.0)),

            ],
          )

      ),
    new Padding(padding: EdgeInsets.all(5.0)),
    ]
    )
    ]
    ),
    ),
    ),
     new Container(
         child: new Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             new Text(
               Flutkart.logout,
               textAlign: TextAlign.center,
               style: new TextStyle(
                   fontSize: 17.0,
                   color: Colors.black,
                   fontStyle: FontStyle.normal),
             ),
             new Image.asset('img/icon_logout.png',
               width: 75.0,
               height: 75.0,
               alignment: Alignment.center,
             ),


           ],
         )
     )
    ]
    ),
    ]
    ),
    ),

    ]

    ),
    );





  }

}


