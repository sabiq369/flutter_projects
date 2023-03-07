import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: 600.0,
          height: 600.0,
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                child: Card(
                  child: Image.network(
                      'https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 50.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.heart_broken,
                    size: 30.0,
                  ),
                ),
              ),
              Text('Web Design Course'),
              Row(
                children: [
                  Text('25'),
                  SizedBox(
                    width: 50.0,
                  ),
                  Text('4.3'),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('50'),
                      Text('Classes'),
                    ],
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    children: [
                      Text('50'),
                      Text('Classes'),
                    ],
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Column(
                    children: [
                      Text('50'),
                      Text('Classes'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25.0,
              ),
              Text('fj dkjksdhfdhhdhashdhsakjdhasfjkhdkahsk'),
              Row(
                children: [IconButton(onPressed: () {}, icon: Icon(cross))],
              )
            ],
          ),
        ),
      ),
    );
  }
}
