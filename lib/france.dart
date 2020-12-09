import 'package:flutter/material.dart';
import 'detailall.dart';

class france extends StatefulWidget {
  static String id = 'france';
  String name;
  france({this.name});
  @override
  _franceState createState() => _franceState();
}

class _franceState extends State<france> {
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
                image: 'images/f1.jpg',
                name: 'Eiffel Tower',
                rewiews: '249,514 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/f2.jpg',
                name: 'Louvre Museum',
                rewiews: '209,308 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/f3.jpg',
                name: 'Cathédrale Notre\n  Dame de Paris',
                rewiews: '42,708 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/f4.jpg',
                name: 'Palace of Versailles',
                rewiews: '94,045 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/f5.jpg',
                name: 'Arc de Triomphe',
                rewiews: '144,002 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/f6.jpg',
                name: 'Sacré-Cœur',
                rewiews: '85,862 reviews',
                lasticon: Icons.star_half,
              ),
              page(
                image: 'images/f7.jpg',
                name: 'Musée d\'Orsay',
                rewiews: '53,696 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/f8.jpg',
                name: 'Champs-Élysées',
                rewiews: '249 reviews',
                lasticon: Icons.star,
              ),
              page(
                image: 'images/f9.jpg',
                name: 'Montmartre',
                rewiews: '2,528 reviews',
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
