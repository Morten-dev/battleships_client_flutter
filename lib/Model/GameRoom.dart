import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'Player.dart';
part 'GameRoom.g.dart';
@JsonSerializable()
class GameRoom {
  String? gameID = "";
  Player? playerOne;
  Player? playerTwo;
  int players = 1;

  GameRoom(this.gameID, this.playerOne, this.playerTwo){
    if(playerTwo != null){
      players = 2;
    }
  }

  static fromJson(Map<String, dynamic> json) => _$GameRoomFromJson(json);

}

