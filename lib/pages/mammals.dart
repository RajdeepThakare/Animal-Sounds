import 'package:flutter/material.dart';

class Mammals extends StatefulWidget {
  @override
  _MammalsState createState() => _MammalsState();
}

class _MammalsState extends State<Mammals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mammals Here!!"),
        centerTitle: true,
      ),
      body: Text("data"),
    );
  }
}
