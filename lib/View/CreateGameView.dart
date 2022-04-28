import 'package:battleships_client/Model/Api.dart';
import 'package:flutter/material.dart';

import '../ViewModel/CreateGameViewModel.dart';
import '../ViewModel/LoginViewModel.dart';
import '../Widgets/TextButtonWidget.dart';
import '../Widgets/TextFieldWidget.dart';

class CreateGameView extends StatelessWidget {
  CreateGameView({Key? key}) : super(key: key);
  final textController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    CreateGameViewModel vm = CreateGameViewModel(context);
    return Scaffold(

      backgroundColor: Colors.white54,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFieldWidget(
              controller: textController,
              hintText: "Enter Your Desired Room Name"),
          TextButtonWidget(
            text: "Create Room",
            onPressed: () => vm.create_OnClick(textController.text),
          ),
        ],
      )
      );



  }
}