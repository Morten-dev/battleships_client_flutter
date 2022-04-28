
import 'dart:convert';

import 'package:battleships_client/Model/GameRoom.dart';
import 'package:battleships_client/View/MainMenuView.dart';
import 'package:flutter/material.dart';

import '../Model/Api.dart';

class JoinGameViewModel{
  late BuildContext context;
  JoinGameViewModel(this.context);

  List<GameRoom> games = [];


  Future<List<GameRoom>> getGameRooms() async{
    var res = await Api.getGameRooms();
    String jsonBody = json.encode(res);
    print (jsonBody);
    List<dynamic> list = json.decode(jsonBody);
    for(var item in list){
      GameRoom game = GameRoom.fromJson(item);

      games.add(game);
    }
    return games;
  }








  void join_OnClick(String roomName) async {
    var success = await Api.joinRoom(roomName);
    if(success){
      var game = games.firstWhere((element) => element.gameID == roomName);
      Navigator.pushNamed(context, '/lobby');
    }
    else{
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text("Room not available"),
            actions: <Widget>[
              FlatButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

