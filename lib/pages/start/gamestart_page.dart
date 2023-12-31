import 'package:flutter/material.dart';
import 'timer.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Start')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '大標題',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            TimerWidget(),
          ],
        ),
      ),
    );
  }
}
