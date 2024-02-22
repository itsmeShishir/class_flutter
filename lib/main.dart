import 'package:flutter/material.dart';
import 'package:flutter_application_2/display_data.dart';
import 'package:flutter_application_2/gridb.dart';
import 'package:flutter_application_2/homes.dart';
import 'package:flutter_application_2/lista.dart';
import 'package:flutter_application_2/main/hello.dart';

void main() {
  runApp(const Ajit());
}

class Ajit extends StatelessWidget {
  const Ajit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/datascreen",
      routes: {
        "/": (context) => const Shishir(),
        "/second": (context) => HelloScreen(
              name: "Shishir",
            ),
        "/lista": (context) => ListA(),
        "/gridb": (context) => const GridB(),
        "/datascreen": (context) => DislayDataScreen(),
      },
    );
  }
}

class Shishir extends StatefulWidget {
  const Shishir({super.key});

  @override
  State<Shishir> createState() => ShishirState();
}

class ShishirState extends State<Shishir> {
  var variabel = 50.2;

  int _currentindexs = 0;

  final List<Widget> _names = [
    HEllos(),
    ListA(),
    GridB(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Arun"),
        centerTitle: true,
      ),
      body: _names[_currentindexs],
      drawer: Drawer(
        width: 250,
        child: Container(
          color: Color.fromARGB(255, 200, 141, 161),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Shishir"),
                accountEmail: Text("Shishir@gmal.com"),
                currentAccountPicture: CircleAvatar(
                    child: Image.network(
                        "https://images.unsplash.com/photo-1682685794304-99d3d07c57d2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8")),
              ),
              const ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              const ListTile(
                title: Text("Shop"),
                leading: const Icon(Icons.shop),
              ),
              const ListTile(
                title: Text("Cart"),
                leading: Icon(Icons.shopping_bag),
              ),
              const ListTile(
                title: Text("Setting"),
                leading: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindexs,
        onTap: (index){
          setState(() {
            _currentindexs = index;
          });
        },
        backgroundColor: Colors.amber,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Shop"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting"
          ),
        ],
      ),
    );
  }
}

