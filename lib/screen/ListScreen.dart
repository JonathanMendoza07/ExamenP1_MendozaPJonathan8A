import 'package:flutter/material.dart';
import '../models/games.dart';
import '../models/games_data.dart';
import 'DetailScreen.dart';
import '../widget/games_widget.dart';
import '../constant.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({ Key? key,  }) : super(key: key);



  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {


  var games = Backend().getGame();

  void showDetail(Games game) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(game: game);
    }));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jonathan Mendoza Pilligua- 8"A"'),
      ),

      body: ListView.separated(
        itemCount: games.length,
        separatorBuilder: (BuildContext context, int index)=> const Divider(
          color: primaryColor,
          indent: 60.0,
          endIndent: 40.0
        ),
        itemBuilder: (BuildContext context, int index) => GamessWidget(
          game: games[index],
          onTap: showDetail,
  
        ),
      ),
    );
  }
}