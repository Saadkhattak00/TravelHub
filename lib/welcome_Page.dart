import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helpus/starting_Page.dart';

// ignore: camel_case_types
class welcome_Page extends StatefulWidget {
  static String id = "welcomePage";
  @override
  _welcome_PageState createState() => _welcome_PageState();
}

class _welcome_PageState extends State<welcome_Page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, starting_Page.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            color: Colors.black,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Text(
                "Travel\nWith Us",
                style: TextStyle(
                    color: Colors.white, fontSize: 50, fontFamily: 'Pacifico'),
              ),
            )),
      ),
    );
  }
}
