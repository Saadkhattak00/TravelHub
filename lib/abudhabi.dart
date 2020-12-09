import 'package:flutter/material.dart';
import 'detailall.dart';

class abudhabi extends StatefulWidget {
  static String id = 'abudhabi';
  String name;
  abudhabi({this.name});
  @override
  _abudhabiState createState() => _abudhabiState();
}

class _abudhabiState extends State<abudhabi> {
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
                image: 'images/a1.jpg',
                name: 'Sheikh Zayed\n'
                    'Grand Mosque',
                rewiews: '36,669 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/a2.jpg',
                name: 'Ferrari World',
                rewiews: '36,498 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/a3.jpg',
                name: 'Emirates Palace',
                rewiews: '19,578 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/a4.jpg',
                name: 'Louvre ',
                rewiews: '15,659 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/a5.jpg',
                name: 'Corniche Road',
                rewiews: '29 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/a6.jpg',
                name: 'Qasr Al Hosn',
                rewiews: '2,873 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/a7.jpg',
                name: 'Yas Waterworld',
                rewiews: '10,133 reviews',
                lasticon: Icons.star_border,
              ),
              page(
                image: 'images/a8.jpg',
                name: 'Corniche Beach',
                rewiews: '1,002 reviews',
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
