import 'package:flutter/material.dart';
import 'detailall.dart';

class pakspots extends StatefulWidget {
  static String id = 'pakspots';
  String name;
  pakspots({this.name});
  @override
  _pakspotsState createState() => _pakspotsState();
}

class _pakspotsState extends State<pakspots> {
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
                image: 'images/p1.jpg',
                name: 'Badshahi Mosque',
                rewiews: '18,194 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p2.jpg',
                name: 'Lahore Fort',
                rewiews: '20,544 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/p3.jpg',
                name: 'Faisal Mosque',
                rewiews: '33,971 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p4.jpg',
                name: 'Sheesh Mahal',
                rewiews: '479 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/p5.jpg',
                name: 'Saif-ul-Maluk Lake',
                rewiews: '1,980 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p6.jpg',
                name: 'Minar-e-Pakistan',
                rewiews: '137,754 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p7.jpg',
                name: 'Pakistan Monument',
                rewiews: '12,988 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/p8.jpg',
                name: 'K2',
                rewiews: '3,167 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p9.jpg',
                name: 'Kumrat Valley',
                rewiews: '328 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/p0.jpg',
                name: 'Lalazar',
                rewiews: '646 reviews',
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
