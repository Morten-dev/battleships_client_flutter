import 'package:battleships_client/Model/GameRoom.dart';
import 'package:battleships_client/Widgets/PlayerCardWidget.dart';
import 'package:flutter/material.dart';

import '../Model/Player.dart';
import '../ViewModel/LobbyViewModel.dart';

class LobbyView extends StatelessWidget{
  const LobbyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LobbyViewModel vm = LobbyViewModel(context);
    return Scaffold(

        body: SizedBox(
            width:double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PlayerCardWidget(
                    playerName: "1",
                  ),
                PlayerCardWidget(
                  playerName: "2",
                ),
              ],
            )
        )
    );
  }
}