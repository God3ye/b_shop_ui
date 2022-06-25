import 'package:flutter/material.dart';

import 'screens/detail_order.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 35.0,
            ),
            Row(
              children: [
                Text(
                  'BBook Store*',
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 28.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 130.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GET',
                      style: TextStyle(
                        fontFamily: 'ProximaNova',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0,
                      ),
                    ),
                    Text(
                      '10% off now',
                      style: TextStyle(
                        fontFamily: 'ProximaNova',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Divider(
              color: Colors.black,
            ),
            Container(
              height: size.height * 0.66,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  MenuItem(
                    img: 'deepwork',
                    bookAuthor: 'Cal Newport',
                    bookTitle: 'Deep Work: Rules for Focused..',
                    qty: 60,
                    releaseYear: 2016,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MenuItem(
                    img: 'mindset',
                    bookAuthor: 'Carol S. Dweck',
                    bookTitle: 'Mindset(Updated Edition)',
                    qty: 17,
                    releaseYear: 2017,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MenuItem(
                    img: 'whywesleep',
                    bookTitle: 'Why We Sleep: Unlocking the..',
                    bookAuthor: 'Matthew Walker',
                    qty: 90,
                    releaseYear: 2017,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MenuItem(
                    img: 'thinkagain',
                    bookTitle: 'Think Again: How to Reason..',
                    bookAuthor: 'Walter Sinnott-Armstrong',
                    qty: 30,
                    releaseYear: 2018,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String img;
  final String bookTitle;
  final String bookAuthor;
  final int releaseYear;
  final int qty;

  const MenuItem({
    this.img,
    this.bookTitle,
    this.bookAuthor,
    this.releaseYear,
    this.qty,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return DetailOrder();
            },
          ),
        );
      },
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(14.0),
      child: Container(
        height: 119,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Row(
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9.0),
                    child: Image.asset(
                      'assets/images/$img.jpg',
                      width: 86,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 9.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      '$bookTitle',
                      style: TextStyle(
                        fontFamily: 'ProximaNova',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Text(
                    'By $bookAuthor',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Year : $releaseYear',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Qty : $qty left',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
