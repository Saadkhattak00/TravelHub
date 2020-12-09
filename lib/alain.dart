import 'package:flutter/material.dart';
import 'package:helpus/detailall.dart';

class alain extends StatefulWidget {
  static String id = 'alain';
  String name;
  alain({this.name});
  @override
  _alainState createState() => _alainState();
}

class _alainState extends State<alain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        title: Center(
            child: Text(
          widget.name,
          style: TextStyle(color: Colors.white),
        )),
        actions: [
          IconButton(
              icon: Icon(
                Icons.flight,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {})
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: PageView(
            children: [
              page(
                image: 'images/al1.jpg',
                name: 'Jebel Hafeet',
                rewiews: '1,539 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al2.jpg',
                name: 'Al Ain Zoo',
                rewiews: '11,604 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al3.jpg',
                name: 'Al Ain Oasis',
                rewiews: '1,120 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al4.jpg',
                name: 'Al Ain Palace Museum',
                rewiews: '1,440 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al5.jpg',
                name: '          Al Ain\nNational Museum',
                rewiews: '471 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al6.jpg',
                name: 'Wadi Adventure',
                rewiews: '625 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al7.jpg',
                name: 'Al Jahili Fort',
                rewiews: '1,042 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al8.jpg',
                name: 'Hili Archaeological\n             Park',
                rewiews: '383 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/al9.jpg',
                name: 'Hili Fun City',
                rewiews: '1,492 reviews',
                lasticon: Icons.star_border,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class page extends StatelessWidget {
  String image;
  String name;
  String rewiews;
  var lasticon;
  page({this.name, this.image, this.lasticon, this.rewiews});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      Icon(
                        lasticon,
                        color: Colors.yellow,
                      ),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              rewiews,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
