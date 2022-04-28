import 'package:flutter/material.dart';

import '../ViewModel/LoginViewModel.dart';
import '../ViewModel/MainMenuViewModel.dart';
import '../Widgets/TextButtonWidget.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainMenuViewModel vm = MainMenuViewModel(context);
    return Scaffold(

        backgroundColor: Colors.white54,
        body: SizedBox(
          width:double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 100, // <-- Your height
                    width: 200,
                    child: TextButtonWidget(
                      text: "Create Game",
                      onPressed: () => vm.createGame_OnClick()
                    ),
                ),
                const SizedBox(height: 20), // Spacing
                SizedBox(
                    height: 100, // <-- Your height
                    width: 200,
                    child: TextButtonWidget(
                      text: "Join Game",
                      onPressed: () => vm.joinGame_OnClick()
                  ),
                ),
              ],
            )
        )


    );



  }
}