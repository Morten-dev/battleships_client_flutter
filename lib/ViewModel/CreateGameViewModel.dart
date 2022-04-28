
import 'package:battleships_client/Model/GameRoom.dart';
import 'package:battleships_client/Services/SessionService.dart';
import 'package:battleships_client/View/MainMenuView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Api.dart';
import '../View/LobbyView.dart';

class CreateGameViewModel{
  late BuildContext context;
  CreateGameViewModel(this.context);

  void create_OnClick(String roomName) async {
    var success = await Api.createRoom(roomName);
    if (success) {
      var player = SessionService.player;
      SessionService.player!.currentGame = GameRoom(roomName, player, null);
      Navigator.pushNamed(context, '/lobby');
    }
  }
}

