import 'package:diettimer/presentation/diet/diet_timer_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class DietTimerScreen extends StatelessWidget {
  const DietTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DietTimerViewModel>();

    return Scaffold(
      body: Center(
        child: CircularCountDownTimer(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          duration: viewModel.duration,
          initialDuration: 0,
          controller: viewModel.controller,
          ringColor: Colors.grey[300]!,
          fillColor: Colors.purpleAccent[100]!,
          backgroundColor: Colors.purple[500],
          strokeWidth: 20.0,
          strokeCap: StrokeCap.round,
          textStyle: const TextStyle(
            fontSize: 33.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textFormat: CountdownTextFormat.S,
          isReverse: false,
          isReverseAnimation: false,
          isTimerTextShown: true,
          autoStart: false,
          onStart: viewModel.onTimerStart,
          onComplete: viewModel.onTimerComplete,
          onChange: viewModel.onTimerChange,
          timeFormatterFunction: (defaultFormatterFunction, duration) {
            if (duration.inSeconds == 0) {
              // only format for '0'
              return "Start";
            } else {
              // other durations by it's default format
              return Function.apply(defaultFormatterFunction, [duration]);
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 30,
          ),
          _button(
            title: "Start",
            onPressed: viewModel.startTimer,
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Pause",
            onPressed: viewModel.pauseTimer,
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Resume",
            onPressed: viewModel.resumeTimer,
          ),
          const SizedBox(
            width: 10,
          ),
          _button(
            title: "Restart",
            onPressed: viewModel.restartTimer,
          ),
        ],
      ),
    );
  }

  Widget _button({required String title, VoidCallback? onPressed}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.purple),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
