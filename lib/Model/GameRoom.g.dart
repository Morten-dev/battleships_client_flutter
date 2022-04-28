// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GameRoom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameRoom _$GameRoomFromJson(Map<String, dynamic> json) => GameRoom(
      json['gameID'] as String?,
      json['playerOne'] == null
          ? null
          : Player.fromJson(json['playerOne'] as Map<String, dynamic>),
      json['playerTwo'] == null
          ? null
          : Player.fromJson(json['playerTwo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameRoomToJson(GameRoom instance) => <String, dynamic>{
      'gameID': instance.gameID,
      'playerOne': instance.playerOne,
      'playerTwo': instance.playerTwo,
      'players': instance.players,
    };
