//import 'package:flutter/material.dart';
import '../models/games.dart';

class Backend {
    /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();
factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _games = [
    Games(
      id:1,
      name:'FIFA23',
      plataforma:'PC, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S y Nintendo Switch.',
      description:'EA SPORTS™ FIFA 23 lleva El Juego de Todos al campo con los torneos de la Copa Mundial de la FIFA™.',
      price:'50',
    ),
    Games(
      id:2,
      name:'Fall Guys',
      plataforma:'PC, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, Nintendo Switch',
      description:'Fall Guys es un royale gratis donde los jugadores compiten en delirantes carreras de obstáculos.',
      price:'Gratis',
    ),
    Games(
      id:3,
      name:'As Dusk Falls',
      plataforma:'PC, Xbox One y Xbox Series X / S',
      description:'As Dusk Fall invita al jugador a sumergirse en un drama interactivo sin respuestas negativas y con decisiones complejas.',
      price:'30',
    ),
    Games(
      id:4,
      name:'Dying Light 2 Stay Human',
      plataforma:'PC, PS5, PS4, Xbox One, Xbox Series X|S.',
      description:'La secuela de Dying Light nos propone  enfrentarnos a todos los peligros propios de una distopía zombi.',
      price:'60',
    ),
    Games(
      id:5,
      name:'Grand Theft Auto V',
      plataforma:'PC, PS3, PS4, Xbox 360, Xbox One, PS5',
      description:'Se trata de una aventura de acción de mundo abierto con multitud de misiones en la que encarnamos a tres personajes distintos: Trevor, Michael y Franklin.',
      price:'20',
    ),
    Games(
      id:6,
      name:'Far Cry 6',
      plataforma:'PC, PS4, PS5, Xbox One, xbox X|S',
      description:'El juego se desarrolla en Yara, una isla caribeña ficticia que yace bajo una dictadura liderada por "El Presidente" Antón Castillo.',
      price:'75',
    ),
  ];


  List<Games> getGame() {
    return _games;
  }
  

}