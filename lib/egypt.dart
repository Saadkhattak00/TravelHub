import 'package:flutter/material.dart';
import 'detailall.dart';

class egypt extends StatefulWidget {
  static String id = 'egypt';
  String name;
  egypt({this.name});
  @override
  _egyptState createState() => _egyptState();
}

class _egyptState extends State<egypt> {
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
                image: 'images/e1.jpg',
                name: 'Giza Necropolis',
                rewiews: '54,290 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/e2.jpg',
                name: 'Valley of the Kings',
                rewiews: '6,113 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e3.jpg',
                name: 'Great Sphinx of Giza',
                rewiews: '11,916 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e4.jpg',
                name: 'The Egyptian Museum',
                rewiews: '28,634 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/e5.jpg',
                name: 'Karnak',
                rewiews: '13,709 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e6.jpg',
                name: 'Abu Simbel Temples',
                rewiews: '7,894 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e7.jpg',
                name: 'Luxor Temple',
                rewiews: '13,608 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e8.jpg',
                name: 'Philae',
                rewiews: '334 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/e9.jpg',
                name: 'Khan el-Khalili',
                rewiews: '24,152 reviews',
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
