import 'package:diettimer/data/data_source/diet_record_data_source.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'presentation/diet/diet_timer_viewmodel.dart';
import 'presentation/main/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting();

  final database = LocalDatabase();
  print('-----------------Get Schudule-------------');
  print(await database.getSchedules());

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DietTimerViewModel>(
          create: (context) => DietTimerViewModel(),
        ),
        // ChangeNotifierProvider<DietStaticsViewModel>(
        //   create: (context) => DietStaticsViewModel(),
        // ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intermittent Fast Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
