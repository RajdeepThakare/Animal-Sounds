import 'package:flutter/material.dart';

class Reptiles extends StatefulWidget {
  @override
  _ReptilesState createState() => _ReptilesState();
}

class _ReptilesState extends State<Reptiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reptiles Here!!"),
        centerTitle: true,
      ),
      body: Text("Reptyy data"),
    );
  }
}