import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Birds extends StatefulWidget {
  @override
  _BirdsState createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
   AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/birds/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Birds Here!!"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(4,4,4,0),
              child: Row(
                children: <Widget>[
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/raven.jpg'),
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.grey[800],
                          width: 4.0,
                        ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('raven.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Raven...'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/redlori.jpg'),
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.grey[800],
                          width: 4.0,
                        ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('redlori.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('RedLori....'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4,4,4,0),
              child: Row(
                children: <Widget>[
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/snowowl.jpg'),
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.grey[800],
                          width: 4.0,
                        ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('snowowl.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Snow Owl'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/sparrow.jpeg'),
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.grey[800],
                          width: 4.0,
                        ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('sparrow.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Sparrow .....'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4,4,4,4),
              child: Row(
                children: <Widget>[
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/woodpecker.jpg'),
                        ),
                        borderRadius:
                              new BorderRadius.all(new Radius.circular(50.0)),
                          border: new Border.all(
                            color: Colors.grey[800],
                            width: 4.0,
                          ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('woodpecker.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('WoodPecker...'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Builder(
                    builder: (context) => Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/birds/redparrot.jpg'),
                        ),
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.grey[800],
                          width: 4.0,
                        ),
                      ),
                      child: FlatButton(
                        padding: EdgeInsets.all(0.0),
                        onPressed: () {
                          _audioCache.play('redparrot.mp3');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Red Parrot'),
                            duration: Duration(milliseconds: 1000),
                          ));
                          //-------------------------------
                        },
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
