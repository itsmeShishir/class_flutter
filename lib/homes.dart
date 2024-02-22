import 'dart:ffi';

import 'package:flutter/material.dart';

class HEllos extends StatefulWidget {
  const HEllos({super.key});

  @override
  State<HEllos> createState() => _HEllosState();
}

class _HEllosState extends State<HEllos> {
  final MyForms = GlobalKey<FormState>();
  var isChecked;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
              color: Colors.green,
              textColor: Colors.red,
              child: const Text("Material Button"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const HelloScreen()),
                // );
              },
              child: const Text("HEllo  Elevated Button"),
              style: const ButtonStyle(),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("HEllo THis is Snack bar"),
                    backgroundColor: Colors.green,
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              icon: const Icon(Icons.add),
              label: const Text("Hello"),
            ),
            const SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
              backgroundColor: Colors.red,
              foregroundColor: Colors.amber,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              iconSize: 50,
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            Form(
                key: MyForms,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                          prefixIcon: Icon(Icons.person),
                          focusedBorder: InputBorder.none,
                        ),
                        validator: (value) {
                          if (value == "") {
                            return "You need to enter you name";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          label: Text("last Name"),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value == "") {
                            return "The value is Null";
                          }
                          return null;
                        },
                      ),
                      // Row(
                      //   children: [
                      //     Checkbox(
                      //         value: isChecked,
                      //         onChanged: (bool? value) {
                      //           setState(() {
                      //             isChecked = value!;
                      //           });
                      //         }),
                      //     Text("Are You a members")
                      //   ],
                      // ),
                      IconButton(
                        onPressed: () {
                          if (MyForms.currentState!.validate()) {
                            print("Sorry ");
                          }
                          ;
                        },
                        icon: const Icon(Icons.abc),
                        iconSize: 50,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}