import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helpus/abudhabi.dart';
import 'package:helpus/alain.dart';
import 'package:helpus/canadaspots.dart';
import 'package:helpus/categorys.dart';
import 'package:helpus/dubaispots.dart';
import 'package:helpus/egypt.dart';
import 'package:helpus/france.dart';
import 'package:helpus/mapping.dart';
import 'package:helpus/pakspots.dart';
import 'package:helpus/sharjah.dart';
import 'package:helpus/ukspots.dart';

class detailall extends StatefulWidget {
  static String id = 'detailall';
  String image;
  String name;
  String explore;
  detailall({this.image, this.name, this.explore});
  @override
  _detailallState createState() => _detailallState();
}

class _detailallState extends State<detailall> {
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
                      fit: BoxFit.cover, image: AssetImage(widget.image))),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'THING\'S TO  ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      'DO IN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Pacifico',
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 0),
                        blurRadius: 8,
                        spreadRadius: 6)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Center(
                        child: Text(
                          mapping[widget.name],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Container(
                            child: Text(
                              'Explore',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              if (widget.explore == dubaispots.id) {
                                return dubaispots(
                                  name: widget.name,
                                );
                              } else if (widget.explore == pakspots.id) {
                                return pakspots(
                                  name: widget.name,
                                );
                              } else if (widget.explore == abudhabi.id) {
                                return abudhabi(
                                  name: widget.name,
                                );
                              } else if (widget.explore == sharjah.id) {
                                return sharjah(
                                  name: widget.name,
                                );
                              } else if (widget.explore == france.id) {
                                return france(
                                  name: widget.name,
                                );
                              } else if (widget.explore == ukspots.id) {
                                return ukspots(
                                  name: widget.name,
                                );
                              } else if (widget.explore == canadaspots.id) {
                                return canadaspots(
                                  name: widget.name,
                                );
                              } else if (widget.explore == egypt.id) {
                                return egypt(
                                  name: widget.name,
                                );
                              } else if (widget.explore == alain.id) {
                                return alain(
                                  name: widget.name,
                                );
                              }
                            }));
                          },
                        ),
                        InkWell(
                            child: Container(
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                if (widget.explore == dubaispots.id) {
                                  return dubaispots(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == pakspots.id) {
                                  return pakspots(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == abudhabi.id) {
                                  return abudhabi(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == sharjah.id) {
                                  return sharjah(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == france.id) {
                                  return france(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == ukspots.id) {
                                  return ukspots(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == canadaspots.id) {
                                  return canadaspots(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == egypt.id) {
                                  return egypt(
                                    name: widget.name,
                                  );
                                } else if (widget.explore == alain.id) {
                                  return alain(
                                    name: widget.name,
                                  );
                                }
                              }));
                            })
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 17,
            child: Container(
              width: 50,
              height: 50,
              child: Center(
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, categorys.id);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
