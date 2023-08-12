import 'package:diettimer/core/component/diet_plan_calendar.dart';
import 'package:diettimer/presentation/diet/diet_timer_screen.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DietSettingScreen extends StatefulWidget {
  final String selectedMethod;
  final DateTime startDate;

  DietSettingScreen({required this.selectedMethod, required this.startDate});

  @override
  _DietSettingScreenState createState() => _DietSettingScreenState();
}

class _DietSettingScreenState extends State<DietSettingScreen> {
  late TextEditingController _startTimeController;
  late TextEditingController _endTimeController;

  @override
  void initState() {
    super.initState();
    _startTimeController =
        TextEditingController(text: widget.startDate.toString());
    _endTimeController =
        TextEditingController(text: ''); // Initialize with an empty value
  }

  @override
  void dispose() {
    _startTimeController.dispose();
    _endTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Plan Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '단식 계획을 설정해 주세요',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text('단식 방법'),
              Card(
                color: Colors.grey,
                child: ListTile(
                  title: Text(
                    ' ${widget.selectedMethod}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('시작 날짜'),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 1000, // Adjust the height as needed
                        child: DietPlanCalendar(startDate: widget.startDate),
                      );
                    },
                  );
                },
                child: const Card(
                  color: Colors.grey,
                  child: ListTile(
                    title: Text(
                      '오늘', // Change the text as needed
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text('시작 시간'),
              TextField(
                controller: _startTimeController,
                readOnly: true,
                decoration: const InputDecoration(
                  hintText: 'Select start time',
                  suffixIcon: Icon(Icons.access_time),
                ),
                onTap: () async {
                  TimeOfDay? selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _startTimeController.text = selectedTime.format(context);
                    });
                  }
                },
              ),
              const SizedBox(height: 16),
              const Text('End Time:'),
              TextFormField(
                controller: _endTimeController,
                readOnly: true,
                decoration: const InputDecoration(
                  hintText: 'Select end time',
                  suffixIcon: Icon(Icons.access_time),
                ),
                onTap: () async {
                  TimeOfDay? selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (selectedTime != null) {
                    setState(() {
                      _endTimeController.text = selectedTime.format(context);
                    });
                  }
                },
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DietTimerScreen()),
                        );
                      },
                      child: const Text('저장하기')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
