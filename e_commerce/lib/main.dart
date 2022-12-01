import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    Ecommerce(),
  );
}

class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  State<Ecommerce> createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TextButton button(String name) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Colors.orange.withOpacity(0.8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          foregroundColor: Colors.white),
      child: Text(
        name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          // leading: Icon(Icons.menu),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            Container(
              width: 100.0,
              height: 100.0,
              // color: Colors.blue,
              child: Stack(
                children: [
                  Positioned(
                    top: 15.0,
                    right: 22.0,
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                  Positioned(
                    right: 20.0,
                    bottom: 33.0,
                    child: Container(
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orange),
                    ),
                  ),
                ],
              ),
            )
          ],
          elevation: 0.0,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
              color: Colors.orange),
          child: BottomNavigationBar(
            elevation: 0.0,
            selectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.transparent,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Person'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.timer_outlined), label: 'Time'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_sharp), label: 'Ring'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings')
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Text('sdfds'),
              Text('sdfds'),
              Text('sdfds'),
              Text('sdfds'),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: InkWell(
            child: Container(
              margin: EdgeInsetsDirectional.only(start: 19.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Sabiq!',
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Best handcrafts for you',
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      button('Sheets'),
                      SizedBox(
                        width: 10.0,
                      ),
                      button('Chappals'),
                      SizedBox(
                        width: 10.0,
                      ),
                      button('Glass'),
                      SizedBox(
                        width: 10.0,
                      ),
                      button('Mattes'),
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(end: 19.0),
                    height: 590.0,
                    child: GridView.builder(
                      itemCount: 13,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15.0,
                              mainAxisSpacing: 15.0),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Color(0xFFf5daf5),
                            elevation: 0,
                            // color: Colors.green,
                            child: Stack(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Positioned(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 15.0,
                                    ),
                                    color: Colors.red,
                                    shape: CircleBorder(),
                                    height: 25.0,
                                  ),
                                  right: -20.0,
                                ),
                                Center(
                                  child: Image.asset(
                                    'images/sofa.png',
                                    width: 140.0,
                                  ),
                                ),
                                Positioned(
                                  child: Text(
                                    '\$36',
                                    style: TextStyle(fontSize: 20.0),
                                  ),
                                  bottom: 10.0,
                                  left: 10.0,
                                ),
                                Positioned(
                                  child: Text(
                                    'Sofa',
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.orange,
                                    ),
                                  ),
                                  left: 8.0,
                                  bottom: 30.0,
                                ),
                                Positioned(
                                  child: MaterialButton(
                                    onPressed: () {},
                                    color: Colors.black,
                                    textColor: Colors.white,
                                    child: Icon(Icons.add, size: 15.0),
                                    shape: CircleBorder(),
                                    height: 25.0,
                                  ),
                                  right: -20.0,
                                  bottom: 5.0,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
