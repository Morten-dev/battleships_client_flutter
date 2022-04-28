
import 'package:battleships_client/Model/GameRoom.dart';
import 'package:battleships_client/View/MainMenuView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Api.dart';
import '../Model/Player.dart';
import '../Services/SessionService.dart';

class LoginViewModel{
  late BuildContext context;
  LoginViewModel(this.context);

  void login_OnClick(String username) async {
    bool success = await Api.register(username);
    if (success) {

      //Register player in sessionservice
      SessionService.player = Player(username, null, null);


      Navigator.pushNamed(context, '/mainMenu');
    }
  }
}

