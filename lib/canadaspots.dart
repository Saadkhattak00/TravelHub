import 'package:flutter/material.dart';
import 'detailall.dart';

class canadaspots extends StatefulWidget {
  static String id = 'canadaspots';
  String name;
  canadaspots({this.name});
  @override
  _canadaspotsState createState() => _canadaspotsState();
}

class _canadaspotsState extends State<canadaspots> {
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
                image: 'images/c1.jpg',
                name: 'Banff National Park',
                rewiews: '27,502 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/c2.jpg',
                name: 'CN Tower',
                rewiews: '45,190 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/c3.jpg',
                name: 'Stanley Park',
                rewiews: '32,820 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/c4.jpg',
                name: 'Jasper National\nPark Of Canada',
                rewiews: '11,165 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/c5.jpg',
                name: 'The Butchart Gardens',
                rewiews: '14,191 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/c6.jpg',
                name: 'Capilano Suspension\nBridge Park',
                rewiews: '19,203 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/c7.jpg',
                name: 'Fairmont Le\nChâteau Frontenac',
                rewiews: '15,079 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/c8.jpg',
                name: 'Lake Louise',
                rewiews: '702 reviews',
                lasticon: Icons.star,
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
