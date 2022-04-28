import 'package:battleships_client/Model/GameRoom.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Player.g.dart';
@JsonSerializable()
class Player {
  String? connectionId;
  String displayName;
  GameRoom? currentGame;

  Player(this.displayName, this.connectionId, this.currentGame);


  static fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);




}