// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:circular_countdown_timer/circular_countdown_timer.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   MyApp({super.key, required this.intermittentFastViewModel});
//   final IntermittentFastViewModel intermittentFastViewModel;
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Intermittent Fast Tracker',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: ChangeNotifierProvider(
//         create: (context) => IntermittentFastViewModel(),
//         child: const DietTimerScreen(),
//       ),
//     );
//   }
// }
//
// class DietTimerScreen extends StatelessWidget {
//   const DietTimerScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Intermittent Fast Tracker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Consumer<IntermittentFastViewModel>(
//               builder: (context, viewModel, child) {
//                 int remainingSeconds = viewModel
//                     .remainingTime.inSeconds; // Convert Duration to seconds
//                 return CircularCountDownTimer(
//                   duration: remainingSeconds, // Pass the duration in seconds
//                   initialDuration: 10,
//                   controller: viewModel.timerController,
//                   width: MediaQuery.of(context).size.width / 2,
//                   height: MediaQuery.of(context).size.height / 2,
//                   ringColor: Colors.grey,
//                   ringGradient: null,
//                   fillColor: Colors.blue,
//                   fillGradient: null,
//                   backgroundColor: Colors.transparent,
//                   strokeWidth: 20.0,
//                   strokeCap: StrokeCap.round,
//                   textStyle: const TextStyle(
//                     fontSize: 36.0,
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textFormat: CountdownTextFormat.HH_MM_SS,
//                   isReverse: true,
//                   isReverseAnimation: true,
//                   isTimerTextShown: true,
//                   autoStart: false,
//                   onStart: () {
//                     viewModel.startTimer();
//                   },
//                   onComplete: () {
//                     viewModel.completeTimer();
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 IntermittentFastViewModel.startTimer();
//               },
//               child: const Text('식사 기록'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class IntermittentFastViewModel extends ChangeNotifier {
//   CountDownController timerController = CountDownController();
//   Duration remainingTime = const Duration(hours: 16); // 초기 단식 시간 (16시간)
//
//   void startTimer() {
//     timerController.start();
//   }
//
//   void completeTimer() {
//     // 타이머 종료 시 동작 처리
//     // 예: 알림 표시 등
//   }
// }
//
// class MealRecordScreen extends StatelessWidget {
//   const MealRecordScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('식사 기록'),
//       ),
//       body: const Center(
//         child: Text('식사 기록 화면'),
//       ),
//     );
//   }
// }
