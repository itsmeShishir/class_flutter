import 'package:flutter/material.dart';

class GridB extends StatelessWidget {
  const GridB({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: 20,
          itemBuilder: (BuildContext context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.green,
              child: Image.network('https://images.unsplash.com/photo-1707059464734-9a6b4028891f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHx8',
              fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        
      );
  }
}
