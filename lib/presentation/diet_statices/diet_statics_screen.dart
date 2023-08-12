// import 'package:diettimer/presentation/diet_statices/diet_statics_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// class DietStaticsScreen extends StatelessWidget {
//   const DietStaticsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('일일 통계'),
//       ),
//       body: Center(
//         child: FutureBuilder<int>(
//           future: context
//               .watch<DietStaticsViewModel>()
//               .getDailyTotal(const Duration(days: 1)),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return const CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               return Text('Error: ${snapshot.error}');
//             } else {
//               return Text('일일 총 합계: ${snapshot.data} 초');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
