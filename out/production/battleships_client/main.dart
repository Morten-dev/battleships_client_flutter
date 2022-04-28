import 'package:battleships_client/View/JoinGameView.dart';
import 'package:battleships_client/View/LoginView.dart';
import 'package:battleships_client/View/MainMenuView.dart';
import 'package:battleships_client/View/CreateGameView.dart';
import 'package:flutter/material.dart';

import 'View/LobbyView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
        accentColor: Colors.black,
        buttonTheme: const ButtonThemeData(
            buttonColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(),
            textTheme: ButtonTextTheme.accent
        )
      ),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/mainMenu': (context) => const MainMenuView(),
        '/createGame': (context) => CreateGameView(),
        '/joinGame': (context) => JoinGameView(),
        '/login': (context) => LoginView(),
        '/lobby': (context) => const LobbyView(),


      },
      home: LoginView(),
    );
  }
}