import 'package:battleships_client/View/MainMenuView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Api.dart';

class MainMenuViewModel{
  late BuildContext context;
  MainMenuViewModel(this.context);

  void createGame_OnClick() {
    Navigator.pushNamed(context, '/createGame');
  }
  void joinGame_OnClick() {
    Navigator.pushNamed(context, '/joinGame');
  }
}

