import 'package:flutter/material.dart';
import 'package:animal_sounds/pages/category.dart';
import 'package:animal_sounds/pages/mammals.dart';

void main() => runApp(MaterialApp(
     // initialRoute: '/category',
      routes: {
        '/': (context) => Category(),
        '/mammals': (context) => Mammals(),
      },
    ));
