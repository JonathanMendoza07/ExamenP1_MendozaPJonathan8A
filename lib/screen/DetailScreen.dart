import 'package:flutter/material.dart';
import '../constant.dart';
import'../models/games.dart';

class DetailScreen extends StatelessWidget {

  final Games game;
  const DetailScreen({ Key? key, required this.game }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
      ),

      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Juego:" ' ${game.name}',
            style: fromTextStyle),
            const Divider(color: primaryColor),
                   const SizedBox(height: 10.0),
            Text("Plataformas:    " ' ${game.plataforma.toString()}'),
            const SizedBox(height: 10.0),
            Text("Descripción:    " ' ${game.description.toString()}'),
            const SizedBox(height: 10.0),
            Text("Precio:    " ' ${game.price.toString()}'),
            const SizedBox(height: 10.0),

             ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(180, 81, 23, 10), // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () { 
          Navigator.pop(context);
        },
        child: Text('Aceptar'),)

          ],
        ), 
      ),
    );
  }
}