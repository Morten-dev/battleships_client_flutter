import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Function onPressed;

  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(text,
          style: const TextStyle(color: Colors.white)
      ),
      style: TextButton.styleFrom(backgroundColor: Colors.blue),
    );
  }
}