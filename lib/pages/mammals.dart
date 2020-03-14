import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Mammals extends StatefulWidget {
  @override
  _MammalsState createState() => _MammalsState();
}

class _MammalsState extends State<Mammals> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/mammals/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mammals Here!!"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Builder(
                    builder: (context) => Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mammals/cat.jpg'),
                            
                          ),
                          borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                   color: Colors.red,
                   width: 4.0,)
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _audioCache.play('cat.mp3');
                            //------------------------------
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Cat Meoww'),
                              duration: Duration(milliseconds: 400),
                            ));
                            //-------------------------------
                          },
                          child: null,
                        ),
                      ),
                  ),
                  Builder(
                    builder: (context) => ClipOval(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mammals/dog.jpg'),
                          ),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _audioCache.play('dog.mp3');
                            //------------------------------
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Dog Bark'),
                              duration: Duration(milliseconds: 400),
                            ));
                            //-------------------------------
                          },
                          child: null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  
                  Builder(
                    builder: (context) => ClipOval(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mammals/pig.jpg'),
                          ),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _audioCache.play('pig.mp3');
                            //------------------------------
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Pig Squeal'),
                              duration: Duration(milliseconds: 400),
                            ));
                            //-------------------------------
                          },
                          child: null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Builder(
                    builder: (context) => ClipOval(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mammals/lamb.jpg'),
                          ),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _audioCache.play('lamb.wav');
                            //------------------------------
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Lamb Baaa'),
                              duration: Duration(milliseconds: 400),
                            ));
                            //-------------------------------
                          },
                          child: null,
                        ),
                      ),
                    ),
                  ),
                  Builder(
                    builder: (context) => ClipOval(
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/mammals/horse.jpg'),
                          ),
                        ),
                        child: FlatButton(
                          padding: EdgeInsets.all(0.0),
                          onPressed: () {
                            _audioCache.play('horse.wav');
                            //------------------------------
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('Horse Whynning'),
                              duration: Duration(milliseconds: 400),
                            ));
                            //-------------------------------
                          },
                          child: null,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
