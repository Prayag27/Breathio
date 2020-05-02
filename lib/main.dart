
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'getStartedPage/getStarted.dart';
import 'mainPage/dashboard.dart';
import 'mapData/mapData.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  int num = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _portraitModeOnly();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute:'/',
      routes: {
        '/': (context) => MyHomePage(),
        '/dashboard': (context)=>dashboard(),
        '/mapData':(context)=>mapData(),
      },
    );
  }
}



void _portraitModeOnly() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}