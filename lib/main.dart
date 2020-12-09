import 'package:flutter/material.dart';
import 'package:helpus/abudhabi.dart';
import 'package:helpus/canadaspots.dart';
import 'package:helpus/categorys.dart';
import 'package:helpus/detailall.dart';
import 'package:helpus/dubaispots.dart';
import 'package:helpus/egypt.dart';
import 'package:helpus/france.dart';
import 'package:helpus/login_Page.dart';
import 'package:helpus/pakspots.dart';
import 'package:helpus/sharjah.dart';
import 'package:helpus/ukspots.dart';
import 'package:helpus/signup_Page.dart';
import 'package:helpus/starting_Page.dart';
import 'package:helpus/welcome_Page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(MyApp());
  Firebase.initializeApp();
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: welcome_Page.id, routes: {
      welcome_Page.id: (context) => welcome_Page(),
      starting_Page.id: (context) => starting_Page(),
      login_Page.id: (context) => login_Page(),
      signup_Page.id: (context) => signup_Page(),
      categorys.id: (context) => categorys(),
      detailall.id: (context) => detailall(),
      ukspots.id: (context) => ukspots(),
      pakspots.id: (context) => pakspots(),
      dubaispots.id: (context) => dubaispots(),
      canadaspots.id: (context) => canadaspots(),
      abudhabi.id: (context) => abudhabi(),
      egypt.id: (context) => egypt(),
      sharjah.id: (context) => sharjah(),
      france.id: (context) => france(),
    });
  }
}
