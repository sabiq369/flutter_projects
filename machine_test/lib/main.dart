import 'package:flutter/material.dart';
import 'package:machine_test/register.dart';
import 'login.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New App'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Welcome to New App',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ],
              ),
              SizedBox(
                height: 100.0,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  fixedSize: Size(250.0, 20.0),
                  elevation: 5.0,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade500,
                  fixedSize: Size(250.0, 20.0),
                  elevation: 5.0,
                ),
                child: Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
