import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toast/toast.dart';

class Reptiles extends StatefulWidget {
  @override
  _ReptilesState createState() => _ReptilesState();
}

class _ReptilesState extends State<Reptiles> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(
        prefix: "audio/reptiles/",
        fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reptiles Here!!"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
              child: Container(
                child: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(4,4,4,0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/alligator.jpg'),
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
                              _audioCache.play('alligator.mp3');
                              //------------------------------
                           //   Scaffold.of(context).showSnackBar(SnackBar(
                            //    content: Text('Alligator...'),
                            //    duration: Duration(milliseconds: 400),
                            //  ));
                              //-------------------------------
                              Toast.show("Alligator", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/argentiniantortoise.jpg'),
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
                              _audioCache.play('argentiniantortoise.mp3');
                              //------------------------------
                            //  Scaffold.of(context).showSnackBar(SnackBar(
                             //   content: Text('argentinian tortoise....'),
                             //   duration: Duration(milliseconds: 400),
                             // ));
                              //-------------------------------
                              Toast.show("Argentinian Tortoise", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
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
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/cobra.jpg'),
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
                              _audioCache.play('cobra.mp3');
                              //------------------------------
                             // Scaffold.of(context).showSnackBar(SnackBar(
                             //   content: Text('Cobra'),
                              //  duration: Duration(milliseconds: 400),
                              //));
                              //-------------------------------
                              Toast.show("Cobraa", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/gecko.jpg'),
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
                              _audioCache.play('gecko.m4a');
                              //------------------------------
                             // Scaffold.of(context).showSnackBar(SnackBar(
                             //   content: Text('Gecko .....'),
                             //   duration: Duration(milliseconds: 400),
                             // ));
                              //-------------------------------
                              Toast.show("Gecko", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
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
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/indiangharil.jpg'),
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
                              _audioCache.play('indiangharil.m4a');
                              //------------------------------
                            //  Scaffold.of(context).showSnackBar(SnackBar(
                            //    content: Text('Indain Gharil...'),
                             //   duration: Duration(milliseconds: 400),
                             // ));
                              //-------------------------------
                              Toast.show("Indian Gharial", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 3),
                    Expanded(
                                          child: Builder(
                        builder: (context) => Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/reptiles/rattlesnake.jpg'),
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
                              _audioCache.play('rattlesnake.mp3');
                              //------------------------------
                            //  Scaffold.of(context).showSnackBar(SnackBar(
                            //    content: Text('Rattle Snake'),
                             //   duration: Duration(milliseconds: 400),
                             // ));
                              //-------------------------------
                              Toast.show("Rattle Snake", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
                            },
                            child: null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
              ),
      ),
    );
  }
}