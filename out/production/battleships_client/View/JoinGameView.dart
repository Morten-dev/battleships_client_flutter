import 'package:battleships_client/Model/Api.dart';
import 'package:battleships_client/Model/GameRoom.dart';
import 'package:flutter/material.dart';
import '../ViewModel/JoinGameViewModel.dart';
import '../ViewModel/LoginViewModel.dart';
import '../Widgets/GameRoomListItem.dart';
import '../Widgets/TextButtonWidget.dart';
import '../Widgets/TextFieldWidget.dart';

class JoinGameView extends StatelessWidget {
  JoinGameView({Key? key}) : super(key: key);
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    JoinGameViewModel vm = JoinGameViewModel(context);
    return FutureBuilder(
        future: vm.getGameRooms(),
        builder: (context, AsyncSnapshot<List<GameRoom>> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFieldWidget(
                    controller: textController,
                    hintText: "Game Room ID",
                  ),
                  TextButtonWidget(
                    text: "Join",
                    onPressed: () {
                      vm.join_OnClick(textController.text);
                    },
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: vm.games.length,
                      itemBuilder: (context, index) {
                        return GameRoomListItem(
                            gameRoom: vm.games[index],
                            onPressed: () {
                              vm.join_OnClick(vm.games[index].gameID);
                            });
                      }),
                ],
              ),
            );
          } else {
            return Scaffold(
                body: SizedBox(
                  width: double.infinity,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        CircularProgressIndicator(),
                        Text("Loading...")
                      ]),
                ));
          }
        });
  }
}
