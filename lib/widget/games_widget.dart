import 'package:flutter/material.dart';
import '../models/games.dart';

class GamessWidget extends StatelessWidget {

  final Games game;
  final Function onTap;

  const GamessWidget({ Key? key, required this.game, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap(game);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 120.0,
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(game.name),
                  Text(game.plataforma.toString()),// style: fromTextStyle),
                  Text(game.description.toString()),// style: fromTextStyle),
                  Text(game.price.toString()),// style: fromTextStyle),
                ],
              ), 
            )
            
          ],

        ) ,
      ),
      
    );
  }
}