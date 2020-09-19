import 'package:flutter/material.dart';
import 'package:give_app_flutter/Activites/SplashScreen.dart';
import 'Activites/ForgetPasswordChangePasswordActivity.dart';
import 'Activites/ForgetPasswordCodeActivity.dart';
import 'Activites/ForgetPasswordEmailActivity.dart';
import 'Activites/Gmaia_DetailsActivity.dart';
import 'Activites/HomeScreen.dart';
import 'Activites/Hospital_DetailsActivity.dart';
import 'Activites/LoginClass.dart';
import 'Activites/ProfileScreen.dart';
import 'Activites/RegisterClass.dart';

void main() => runApp(
    new MaterialApp(
    theme:
    ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));



var  routes =  <String ,WidgetBuilder>{
  '/RegisterClient': (BuildContext context) => new RegisterCliant(),
  '/ProfileScreen': (BuildContext context) => new ProfileScreen(),
  '/LoginClient' : (BuildContext context) => new LoginCliant(),
  '/HomeTabBar' : (BuildContext context) => new HomeTabBar(),
  '/Hospital_Details' : (BuildContext context) => new Hospital_Details(),
  '/Charities_Details' : (BuildContext context) => new Gmaia_Details(),
  '/ForgetPasswordEmail' : (BuildContext context) => new ForgetPasswordEmail(),
  '/ForgetPasswordCode' : (BuildContext context) => new ForgetPasswordCode(),
  '/ForgetPasswordChangePassword' : (BuildContext context) => new ForgetPasswordChangePassword(),

};

