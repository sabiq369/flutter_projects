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
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          left: 120.0,
                          top: 10.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 15.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 10.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 13.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 45.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          left: 120.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Stack(
                      children: [
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          left: 120.0,
                          top: 10.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 15.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 10.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 13.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 45.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          left: 120.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Stack(
                      children: [
                        Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          left: 120.0,
                          top: 10.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 15.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 10.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 13.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 45.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          left: 120.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    )
                  ],
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  scrollDirection: Axis.vertical,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 5.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 7.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 38.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 5.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 7.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 38.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 5.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 7.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 38.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: Color(0xFFfad7f0)),
                        ),
                        Positioned(
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 25.0,
                            ),
                            color: Colors.red,
                            shape: CircleBorder(),
                          ),
                        ),
                        Positioned(
                          top: 5.0,
                          left: 15.0,
                          width: 150.0,
                          height: 150.0,
                          child: Image.asset('images/sofa.png'),
                        ),
                        Positioned(
                          bottom: 7.0,
                          child: Icon(Icons.attach_money, size: 35.0),
                        ),
                        Positioned(
                          bottom: 10.0,
                          left: 30.0,
                          child: Text(
                            '36',
                            style: TextStyle(fontSize: 25.0),
                          ),
                        ),
                        Positioned(
                            left: 10.0,
                            bottom: 38.0,
                            child: Text(
                              'Sofa',
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.orange),
                            )),
                        Positioned(
                          bottom: 16.0,
                          right: -15.0,
                          child: MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            textColor: Colors.white,
                            child: Icon(Icons.add, size: 25.0),
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
