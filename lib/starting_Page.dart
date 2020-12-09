import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpus/login_Page.dart';
import 'package:helpus/signup_Page.dart';

// ignore: camel_case_types
class starting_Page extends StatefulWidget {
  static String id = 'starting_Page';
  @override
  _starting_PageState createState() => _starting_PageState();
}

class _starting_PageState extends State<starting_Page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/plane.jpg'))),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome  to Travel Hub",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 33,
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  Container(
                    width: 220,
                    height: 55,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(30.0)),
                      color: Colors.white70,
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: "Pacifico"),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, login_Page.id);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Pacifico'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 220,
                    height: 55,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.white70,
                      child: Center(
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, signup_Page.id);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Positioned(
            //     bottom: 10,
            //     left: 10,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       child: Text(
            //         "Already Existing Account then Press on LogIn Otherwise Press on SignUp",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 15,
            //           // fontFamily: 'Pacifico'
            //         ),
            //       ),
            //     )),
          ],
        ),
      ),
    );
  }
}
