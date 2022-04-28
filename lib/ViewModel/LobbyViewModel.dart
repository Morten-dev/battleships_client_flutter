import 'package:battleships_client/Model/Player.dart';
import 'package:battleships_client/Services/SessionService.dart';
import 'package:flutter/cupertino.dart';

class LobbyViewModel {
  late BuildContext context;

  var player = SessionService.player;
  var opponent = SessionService.opponent;
  LobbyViewModel(this.context);


}