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
        title: Text("Category of Animals"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(width: 5),
              borderRadius: BorderRadius.all(
                  Radius.circular(10) //         <--- border radius here
                  ),
              image: DecorationImage(
                image: AssetImage('assets/images/Mammals.jpg'),
              ),
            ),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                Navigator.pushNamed(context, '/mammals');
              },
              child: null,
            ),
          ),
        ],
      ),
    ));
  }
}
