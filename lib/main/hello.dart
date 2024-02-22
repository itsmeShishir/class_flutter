import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class HelloScreen extends StatelessWidget {
  final String name;
  HelloScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Second Screen"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Shishir()),
              );
            },
            child: Text("HEllo $name"),
            style: ButtonStyle(),
          ),
        ),
    );
  }
}
