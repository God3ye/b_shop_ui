import 'package:flutter/material.dart';

class DetailOrder extends StatefulWidget {
  @override
  _DetailOrderState createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
  bool enable = true;
  int num1 = 0;

  void increaseNum() {
    setState(() {
      num1 = num1 + 1;
    });
  }

  void decreseNumber() {
    setState(() {
      num1 = num1 - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 35.0,
                ),
                Center(
                  child: Text(
                    'Detail',
                    style: TextStyle(
                      fontFamily: 'ProximaNova',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/thinkagain.jpg',
                          width: 103,
                          height: 162,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 9.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Think Again: How to Reason',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'By Walter Sinnott-Armstrong',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 13.0,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Year: 2018',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Page: 256',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Publisher: Oxford University',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'File: EPUB, 214 KB',
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: size.height * 0.6285,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(34.0),
                topRight: Radius.circular(34.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Overview',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                      Text(
                        r'Price: $9.99',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: size.height * 0.425,
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text(
                        'Lorem ipsum dolor sit ametLorem ipsum dolor sitLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dLorem ipsum dolor sit ametLorem ipsum dolor Lorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametsit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametolor sit ametLorem ipsum dolor sit ametdolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit ametLorem ipsum dolor sit amet',
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          color: Colors.grey,
                          fontSize: 16.0,
                          height: 1.3,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(41),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            if (num1 == 0) {
                              setState(() {
                                enable = false;
                              });
                            } else {
                              decreseNumber();
                            }
                          },
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '$num1',
                          style: TextStyle(
                            fontFamily: 'ProximaNova',
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            increaseNum();
                          },
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 155,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(41),
                          ),
                          child: Center(
                            child: Text(
                              'Order',
                              style: TextStyle(
                                fontFamily: 'ProximaNova',
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
