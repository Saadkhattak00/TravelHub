import 'package:flutter/material.dart';
import 'package:helpus/categorys.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:helpus/signup_Page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class login_Page extends StatefulWidget {
  static String id = 'login_Page';
  @override
  _login_PageState createState() => _login_PageState();
}

class _login_PageState extends State<login_Page> {
  final auth = FirebaseAuth.instance;
  String email;
  String password;
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
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('images/plane.jpg'),
                      fit: BoxFit.cover,
                    )),
                  )),
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
                    height: 30,
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
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      child: TextField(
                        style: TextStyle(fontSize: 20),
                        onSubmitted: (String value) {
                          password = value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          icon: Icon(
                            Icons.security,
                            color: Colors.black,
                          ),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 200,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white70,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Pacifico'),
                        ),
                        onPressed: () async {
                          setState(() {
                            circle = true;
                          });
                          try {
                            final user = await auth.signInWithEmailAndPassword(
                                email: email, password: password);
                            if (user != null) {
                              circle = false;
                              Navigator.pushNamed(context, categorys.id);
                            }
                          } catch (e) {
                            print(e);
                          }
                        }),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 200,
                    child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: Colors.white70,
                        child: Text(
                          'Registration',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Pacifico'),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, signup_Page.id);
                        }),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
