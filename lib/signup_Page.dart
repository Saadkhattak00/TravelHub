import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:helpus/login_Page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

// ignore: camel_case_types
class signup_Page extends StatefulWidget {
  static String id = 'signup_Page';
  @override
  _signup_PageState createState() => _signup_PageState();
}

class _signup_PageState extends State<signup_Page> {
  String email;
  String password;

  final auth = FirebaseAuth.instance;
  bool circle = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: ModalProgressHUD(
            inAsyncCall: circle,
            progressIndicator: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/plane.jpg'))),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Travel Hub',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 50,
                            fontFamily: 'Pacifico'),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: Container(
                    //     width: MediaQuery.of(context).size.width,
                    //     child: TextField(
                    //       style: TextStyle(fontSize: 20),
                    //       onSubmitted: (String value) {},
                    //       decoration: InputDecoration(
                    //           labelText: 'First Name',
                    //           focusedBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30)),
                    //           enabledBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30))),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: Container(
                    //     child: TextField(
                    //       style: TextStyle(fontSize: 20),
                    //       decoration: InputDecoration(
                    //           labelText: 'Last Name',
                    //           focusedBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30)),
                    //           enabledBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30))),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          onSubmitted: (String value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              labelText: 'Email',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Container(
                        child: TextField(
                          style: TextStyle(fontSize: 20),
                          onSubmitted: (String value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.security,
                                color: Colors.black,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Password'),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    // Padding(
                    //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    //   child: Container(
                    //     child: TextField(
                    //       obscureText: true,
                    //       decoration: InputDecoration(
                    //           focusedBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30)),
                    //           enabledBorder: OutlineInputBorder(
                    //               borderRadius: BorderRadius.circular(30)),
                    //           labelText: 'Confirm Password'),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white70,
                        onPressed: () async {
                          setState(() {
                            circle = true;
                          });
                          try {
                            final user =
                                await auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (user != null) {
                              circle = false;
                              Navigator.pushNamed(context, login_Page.id);
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Pacifico',
                              fontSize: 30),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, login_Page.id);
                      },
                      child: Container(
                        child: Text(
                          'Existing Already?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
