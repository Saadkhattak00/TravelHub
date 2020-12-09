import 'package:flutter/material.dart';
import 'detailall.dart';

class ukspots extends StatefulWidget {
  static String id = 'ukspots';
  String name;
  ukspots({this.name});
  @override
  _ukspotsState createState() => _ukspotsState();
}

class _ukspotsState extends State<ukspots> {
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
                image: 'images/uk1.jpg',
                name: 'The British Museum',
                rewiews: '110,970 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk2.jpg',
                name: 'Tower of London',
                rewiews: '73,581 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk3.jpg',
                name: 'Stonehenge',
                rewiews: '34,810 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk4.jpg',
                name: 'Big Ben',
                rewiews: '44,616 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk5.jpg',
                name: ' London Eye',
                rewiews: '125,397 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk6.jpg',
                name: 'Buckingham Palace',
                rewiews: '137,754 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/uk7.jpg',
                name: 'Tower Bridge',
                rewiews: '107,619 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/uk8.jpg',
                name: 'Edinburgh Castle',
                rewiews: '63,887 reviews',
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
