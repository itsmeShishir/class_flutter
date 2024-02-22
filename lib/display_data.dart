import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DislayDataScreen extends StatefulWidget {
  const DislayDataScreen({super.key});

  @override
  State<DislayDataScreen> createState() => _DislayDataScreenState();
}

class _DislayDataScreenState extends State<DislayDataScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data From Json"),
        centerTitle: true,
      ),
    );
  }
}

class Blog{
  final String id;
  final String title;
  final String body;

  Blog({required this.id,required this.title,required this.body});

  factory Blog.fromJson(Map<String, dynamic> json){
    return Blog(id: json['id'], title: json['title'], body: json['body']);
  }
}

class OnlineService{
  Future<List<Blog>> loadArun() async{
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    
  }
}



