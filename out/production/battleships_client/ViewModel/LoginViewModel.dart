
import 'package:battleships_client/Model/GameRoom.dart';
import 'package:battleships_client/View/MainMenuView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Api.dart';
import '../Model/Player.dart';

class LoginViewModel{
  late BuildContext context;
  LoginViewModel(this.context);

  void login_OnClick(String username) async {
    bool success = await Api.register(username);
    if (success) {
      Navigator.pushNamed(context, '/mainMenu');
    }
  }
}

