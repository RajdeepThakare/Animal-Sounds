import 'package:flutter/material.dart';

class Birds extends StatefulWidget {
  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birds Here!!"),
        centerTitle: true,
      ),
      body: Text("birdy data"),
    );
  }
}
