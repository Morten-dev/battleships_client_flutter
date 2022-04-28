import 'package:flutter/material.dart';

class PlayerCardWidget extends StatelessWidget {
  final String playerName;
  const PlayerCardWidget({
    Key? key,
    required this.playerName,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: Colors.black),
      ),
      child: Text(
          playerName,
          style: Theme.of(context).textTheme.headline6,
        ),
    );
  }
}