import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class DietTimerViewModel extends ChangeNotifier {
  final int _duration = 10;
  int get duration => _duration;
  final CountDownController _controller = CountDownController();

  CountDownController get controller => _controller;

  void startTimer() {
    _controller.start();
  }

  void pauseTimer() {
    _controller.pause();
  }

  void resumeTimer() {
    _controller.resume();
  }

  void restartTimer() {
    _controller.restart(duration: _duration);
  }

  // String formatTimer(Duration duration) {
  //   if (duration.inSeconds == 0) {
  //     return "Start";
  //   } else {
  //     return CountdownFormatter.getDefaultFormat(duration);
  //   }
  // }

  void onTimerStart() {
    debugPrint('Countdown Started');
  }

  void onTimerComplete() {
    debugPrint('Countdown Ended');
  }

  void onTimerChange(String timeStamp) {
    debugPrint('Countdown Changed $timeStamp');
  }
}
