import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Arthropods extends StatefulWidget {
  @override
  _ArthropodsState createState() => _ArthropodsState();
}

class _ArthropodsState extends State<Arthropods> {
  

  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/arthropods/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arthropods Here!!"),
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
                          image: AssetImage('assets/images/arthropods/bee.jpg'),
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
                          _audioCache.play('bee.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Bee...'),
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
                          image: AssetImage('assets/images/arthropods/bumblebee.jpg'),
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
                          _audioCache.play('bumblebee.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Bumble Bee....'),
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
                          image: AssetImage('assets/images/arthropods/cicada.jpg'),
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
                          _audioCache.play('cicada.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Cicada...'),
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
                          image: AssetImage('assets/images/arthropods/cockroach.jpg'),
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
                          _audioCache.play('cockroach.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('cockroach .....'),
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
                          image: AssetImage('assets/images/arthropods/crab.jpg'),
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
                          _audioCache.play('crab.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Crab...'),
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
                          image: AssetImage('assets/images/arthropods/mosquito.jpg'),
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
                          _audioCache.play('mosquito.m4a');
                          //------------------------------
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('Mosquito...'),
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