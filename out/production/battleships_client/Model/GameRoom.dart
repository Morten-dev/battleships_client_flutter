import 'dart:convert';


class GameRoom {
  String gameID = "";
  String playerOne = "";
  String? playerTwo = "";
  int players = 1;

  GameRoom({required this.gameID, required this.playerOne, this.playerTwo});

  GameRoom.fromJson(Map<String, dynamic> json) {
    gameID = json['gameID'];
    playerOne = json['playerOne'];
    playerTwo = json['playerTwo'];
    print(playerTwo);
    if(playerTwo != null) {
      players = 2;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gameID'] = this.gameID;
    data['playerOne'] = this.playerOne;
    data['playerTwo'] = this.playerTwo;

    return data;
  }


}