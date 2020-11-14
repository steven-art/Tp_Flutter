import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:english_words/english_words.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  WordPair wordpair = WordPair.random();
  Random randomInt = Random(8);
  final List<Card> cardList = <Card>[];

  void _generationOfCard() {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: cardList.length,
              itemBuilder: (BuildContext context, int index) {
                if ( index>= cardList.length){
                  _generationOfCard();
                }
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(),
                      title: Text(wordpair.asPascalCase),
                      subtitle: Text('+336' + randomInt.toString()),
                      trailing: Icon(Icons.more_vert),
                    ),
                  );

              })),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlue,
              Colors.blueGrey,
            ],
          )),
          child: ListView(children: <Widget>[
            DrawerHeader(
                child: Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: ExactAssetImage(
                    'img/portrait.jpg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Ce bon vieux",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "+00000000000",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ))
          ]),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
