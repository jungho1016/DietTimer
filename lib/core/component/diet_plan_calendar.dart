import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DietPlanCalendar extends StatelessWidget {
  final DateTime startDate;

  const DietPlanCalendar({Key? key, required this.startDate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      startingDayOfWeek: StartingDayOfWeek.sunday,
      calendarStyle: const CalendarStyle(
        selectedDecoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        todayDecoration: BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
      focusedDay: DateTime.now(),
      firstDay: startDate,
      lastDay: DateTime.now().add(const Duration(days: 365)),
    );
  }
}
