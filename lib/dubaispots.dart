import 'package:flutter/material.dart';
import 'detailall.dart';

class dubaispots extends StatefulWidget {
  static String id = 'dubaispots';
  String name;
  dubaispots({this.name});
  @override
  _dubaispotsState createState() => _dubaispotsState();
}

class _dubaispotsState extends State<dubaispots> {
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
                image: 'images/d1.jpg',
                name: 'Burj Khalifa',
                rewiews: '72,250 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/d2.jpg',
                name: 'Burj Al Arab',
                rewiews: '19,902 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/d3.jpg',
                name: 'The Dubai Mall',
                rewiews: '161,123 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/d4.jpg',
                name: 'Dubai Creek',
                rewiews: '913 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/d5.jpg',
                name: 'The Dubai Fountain',
                rewiews: '61,050 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/d6.jpg',
                name: 'Dubai Museum',
                rewiews: '13,433 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/d7.jpg',
                name: 'Wild Wadi Waterpark',
                rewiews: '9,852 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/d8.jpg',
                name: 'Ski Dubai',
                rewiews: '18,680 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/d9.jpg',
                name: 'Mall of the Emirates',
                rewiews: '81,178 reviews',
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
