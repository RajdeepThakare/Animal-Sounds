import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Category"),
      ),
      body: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/mammals');
        },
        child: Text("null"),
      ),
    ));
  }
}
