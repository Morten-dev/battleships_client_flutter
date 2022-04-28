import 'package:battleships_client/Model/Api.dart';
import 'package:battleships_client/Widgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import '../ViewModel/LoginViewModel.dart';
import '../Widgets/TextButtonWidget.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final textController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    LoginViewModel vm = LoginViewModel(context);
    return Scaffold(

      backgroundColor: Colors.white54,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextFieldWidget(
              controller: textController,
              hintText: "Enter Your Username"),
          TextButtonWidget(
              text: "Login",
              onPressed: () => vm.login_OnClick(textController.text),
          ),
        ],
      )
      );



  }
}