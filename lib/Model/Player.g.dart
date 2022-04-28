// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      connectionId: json['connectionId'] as String?,
      displayName: json['displayName'] as String?,
      currentGame: json['currentGame'] == null
          ? null
          : GameRoom.fromJson(json['currentGame'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'connectionId': instance.connectionId,
      'displayName': instance.displayName,
      'currentGame': instance.currentGame,
    };
