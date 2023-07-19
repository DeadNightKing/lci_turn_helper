import 'dart:async';

import 'package:flutter/material.dart';
import 'button1.dart';
import 'button2.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  int _count = 30;
  bool _isButton1Visible = true;
  bool _isButton2Visible = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_count > 0) {
          _count--;
        } else {
          _count = 30;
          _toggleButtons();
        }
      });
    });
  }

  void _toggleButtons() {
    _isButton1Visible = !_isButton1Visible;
    _isButton2Visible = !_isButton2Visible;
  }

  void _handleButton1Pressed() {
    setState(() {
      _count = 30;
      _toggleButtons();
    });
  }

  void _handleButton2Pressed() {
    setState(() {
      _count = 30;
      _toggleButtons();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '倒數計時: ',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          '$_count',
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (_isButton1Visible)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width / 5),
                    Button1(onPressed: _handleButton1Pressed),
                  ],
                ),
              ),
            if (_isButton2Visible)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Button2(onPressed: _handleButton2Pressed),
                    SizedBox(width: MediaQuery.of(context).size.width / 5),
                  ],
                ),
              ),
          ],
        ),
      ],
    );
  }
}
