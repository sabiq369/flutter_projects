import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
      ),
      body: Material(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Enter your email',
                    fillColor: Colors.blueAccent,
                    icon: Icon(Icons.email)),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                onChanged: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: 'Enter your password',
                  fillColor: Colors.blueAccent,
                  icon: Icon(Icons.password),
                ),
                textAlign: TextAlign.center,
                obscureText: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextButton(
                onPressed: () {
                  _auth.createUserWithEmailAndPassword(
                      email: email, password: password);
                },
                child: Text('Register'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
