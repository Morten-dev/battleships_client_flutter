
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
      Navigator.pushNamed(context, '/lobby');
    }
  }
}

