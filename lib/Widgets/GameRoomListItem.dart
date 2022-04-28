import 'package:battleships_client/Model/GameRoom.dart';
import 'package:flutter/material.dart';

class GameRoomListItem extends StatelessWidget {
  final GameRoom gameRoom;
  final Function onPressed;

  const GameRoomListItem({
    Key? key,
    required this.gameRoom,
    required this.onPressed,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          onPressed();
        },
        child:
        Row(

          children: <Widget>[
            Container(margin: const EdgeInsets.all(10),child: Text(gameRoom.players.toString() + "/2", style: const TextStyle(color: Colors.black))),
            Container(height: 20,width: 1,color: Colors.blue,),
            Container(margin:const EdgeInsets.all(10),child: Text(gameRoom.gameID!, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
            const Spacer(),
            Container(margin:const EdgeInsets.all(10),child: Align( alignment: Alignment.centerRight ,child: Text(gameRoom.playerOne!.displayName, style: const TextStyle(color: Colors.black)))),
          ],
        ),
      ),
    );
  }

}