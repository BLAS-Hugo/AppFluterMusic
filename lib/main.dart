import 'package:flutter/material.dart';
import 'Music.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spoti Fake',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Spoti Fake'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Music> musicList = [
    new Music('Theme Swift', 'Codabee', 'assets/un.jpg', 'https://codabee.com/wp-content/uplaods/2018/06/un.mp3'),
    new Music('Theme Flutter', 'Codabee', 'assets/deux.jpg', 'https://codabee.com/wp-content/uplaods/2018/06/deux.mp3')
  ];

  Music actualMusic;

  @override
  void initState() {
    super.initState();
    actualMusic = musicList[0];
  }

    @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        leading: Icon(Icons.speaker_rounded),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              margin: EdgeInsets.only(top: height / 20),
              elevation: 9.0,
              child: Container(
                height: height / 2.15,
                width: height / 2.15,
                child: Image.asset(actualMusic.imagePath),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Text(
                      actualMusic.title,
                      textScaleFactor: 2.0,

                  ),
                ),
                Container(
                  child: Text(actualMusic.artist),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                      size: height / 16,
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: height / 10,
                    ),
                    Icon(
                      Icons.skip_next,
                      color: Colors.white,
                      size: height / 16,
                    ),
                  ]
                ),
              ]
            ),
            Container(
              child: Text('Durée'),
            )
          ],
        ),
      ),
          );
  }
}

