import 'package:ba_technology/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:ba_technology/screens/signin.dart';

class SigninRegister extends StatelessWidget {
  const SigninRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Signin(),
                  ));
            },
            child: Text('Sign in'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Register(),
                  ));
            },
            child: Text('Register'),
          )
        ],
      ),
    );
  }
}
