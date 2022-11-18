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

/*
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,
                decoration: BoxDecoration(
                    color: email.read ? Colors.transparent : primaryColor,
                    shape: BoxShape.circle),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(email.dateTime.toString().substring(0, 10),
                      style: dateTextStyle),
                  Text(email.from, style: fromTextStyle),
                  Text(email.subject, style: subjectTextStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}*/