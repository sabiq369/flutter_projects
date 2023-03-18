import 'package:flutter/material.dart';
import 'package:ba_technology/screens/signin_register.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe90101),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SigninRegister(),
                ));
          },
          child: CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.white,
            child: Image.asset("images/eayezy.png"),
          ),
        ),
      ),
    );
  }
}
