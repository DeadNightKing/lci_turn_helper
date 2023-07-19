import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final VoidCallback onPressed;

  const Button2({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('按鈕 2'),
    );
  }
}
