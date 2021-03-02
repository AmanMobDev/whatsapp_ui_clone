import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/home.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:whatsapp_clone/Screens/message_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          body1: TextStyle(color: Colors.black),
          button: TextStyle(
            color: Colors.white,
          ),
        ),
        bottomAppBarColor: Colors.white,
      ),
      routes: <String, WidgetBuilder>{
        "/m": (BuildContext context) => Message(),
      },
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image(
          image: AssetImage("images/whatsapp_logo.png"),
          width: 200.0,
          height: 100.0,
        ),
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: Home(),
        backgroundColor: Colors.white,
      ),
    );
  }
}
