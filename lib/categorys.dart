import 'package:flutter/material.dart';
import 'package:helpus/detailall.dart';
import 'package:helpus/dubaispots.dart';
import 'package:helpus/login_Page.dart';

class categorys extends StatefulWidget {
  static String id = 'categorys';
  @override
  _categorysState createState() => _categorysState();
}

class _categorysState extends State<categorys> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Center(
            child: Text(
              'Travel Hub',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  fontFamily: 'Pacifico'),
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, login_Page.id);
                }),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text(
                  'Things to do',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        size: 25,
                        color: Colors.white38,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(30)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white38),
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'What are you looking for?',
                      labelStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 15,
                          fontFamily: 'Pacifico')),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            container(
              image: 'images/Dubai.png',
              name: 'Dubai',
              nextPage: 'dubaispots',
            ),
            container(
              image: 'images/pakistan.jpg',
              name: 'Pakistan',
              nextPage: 'pakspots',
            ),
            container(
              image: 'images/uk.jpg',
              name: '  United\nKingdom',
              nextPage: 'ukspots',
            ),
            container(
              image: 'images/canada.jpg',
              name: 'Canada',
              nextPage: 'canadaspots',
            ),
            container(
              image: 'images/abudhabi.jpg',
              name: 'Abu Dhabi',
              nextPage: 'abudhabi',
            ),
            container(
              image: 'images/egypt.jpg',
              name: 'Egypt',
              nextPage: 'egypt',
            ),
            container(
              image: 'images/sharjah.jpg',
              name: 'Sharjah',
              nextPage: 'sharjah',
            ),
            container(
              image: 'images/france.jpg',
              name: 'France',
              nextPage: 'france',
            ),
            container(
              image: 'images/alain.jpg',
              name: 'AL Ain',
              nextPage: 'alain',
            ),
          ],
        ),
      ),
    );
  }
}

class container extends StatelessWidget {
  String image;
  String name;
  String nextPage;
  container({this.name, this.image, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image))),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black38, borderRadius: BorderRadius.circular(30)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return detailall(
                  image: image,
                  name: name,
                  explore: nextPage,
                );
              }));
            },
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: (Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
