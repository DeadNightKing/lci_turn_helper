import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final VoidCallback onPressed;

  const Button1({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('按鈕 1'),
    );
  }
}
