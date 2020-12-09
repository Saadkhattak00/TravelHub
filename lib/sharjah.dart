import 'package:flutter/material.dart';
import 'detailall.dart';

class sharjah extends StatefulWidget {
  static String id = 'sharjah';
  String name;
  sharjah({this.name});
  @override
  _sharjahState createState() => _sharjahState();
}

class _sharjahState extends State<sharjah> {
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
                image: 'images/s1.jpg',
                name: 'Al Mamzar Beach\n           Street',
                rewiews: '54,290 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/s2.jpg',
                name: 'Sharjah Museum of\nIslamic Civilization',
                rewiews: '2,572 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s3.jpg',
                name: 'Al Noor Mosque',
                rewiews: '6,858 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/s4.jpg',
                name: 'Sharjah Aquarium',
                rewiews: '6,022 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s5.jpg',
                name: 'Al Noor Island',
                rewiews: '968 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s6.jpg',
                name: 'Al Mamzar Beach Park',
                rewiews: '15,881 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s7.jpg',
                name: 'Sharjah Art Museum',
                rewiews: '574 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s8.jpg',
                name: 'Al Montazah Parks',
                rewiews: '1,336 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/s9.jpg',
                name: 'Al Majaz Waterfront',
                rewiews: '3,903 reviews',
                lasticon: Icons.star_half,
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
