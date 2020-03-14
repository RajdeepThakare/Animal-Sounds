import 'package:flutter/material.dart';

class Arthropods extends StatefulWidget {
  @override
  _ArthropodsState createState() => _ArthropodsState();
}

class _ArthropodsState extends State<Arthropods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arthropods Here!!"),
        centerTitle: true,
      ),
      body: Text("Arthoiy data"),
    );
  }
}