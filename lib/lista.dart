import 'package:flutter/material.dart';

class ListA extends StatelessWidget {
  ListA({super.key});

  final List<String> _names = [
    'Shisir',
    "Ajit",
    "arun",
    "Sandesh",
    "rejin",
    "Elvish",
    "ram",
    "shayam",
    "Hari",
    "Sita",
    "laxman",
    "aaa"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(_names[index]),
          subtitle: const Text("9862625004"),
          leading: Container(
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.amber,
              child: Icon(Icons.person),
            ),
          ),
          trailing: const Icon(Icons.call),
      ),
    );
  }
}
