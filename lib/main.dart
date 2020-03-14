

import 'package:animal_sounds/pages/arthropods.dart';
import 'package:flutter/material.dart';
import 'package:animal_sounds/pages/category.dart';
import 'package:animal_sounds/pages/mammals.dart';
import 'package:animal_sounds/pages/birds.dart';
import 'package:animal_sounds/pages/reptiles.dart';


void main() => runApp(MaterialApp(
     //  initialRoute: '/category',
      routes: {
        '/': (context) => Category(),
        '/mammals': (context) => Mammals(),
        '/birds':(context) => Birds(), 
        '/reptiles':(context) => Reptiles(), 
        '/arthropods':(context) => Arthropods(),
      },
    ));
