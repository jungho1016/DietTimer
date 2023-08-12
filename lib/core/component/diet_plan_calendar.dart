import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DietPlanCalendar extends StatefulWidget {
  const DietPlanCalendar({Key? key}) : super(key: key);

  @override
  State<DietPlanCalendar> createState() => _DietPlanCalendarState();
}

class _DietPlanCalendarState extends State<DietPlanCalendar> {
  late DateTime now;
  late DateTime firstDayOfMonth;
  late DateTime lastDayOfMonth;
  late DateTime maxSelectableDay;

  // 초기 선택 날짜를 오늘로 설정
  late DateTime selectedDay;

  @override
  void initState() {
    super.initState();
    now = DateTime.now();
    selectedDay = DateTime(now.year, now.month, now.day); // 오늘로 초기화
    firstDayOfMonth = DateTime(now.year, now.month, 1);
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
    maxSelectableDay = now.add(const Duration(days: 3));
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    // 오늘로부터 1일 이전 날짜 계산
    DateTime oneDayAgo = now.subtract(const Duration(days: 1));

    // 선택한 날짜가 오늘 이전이 아니고, 선택 가능한 날짜 범위 내에 있는지 확인
    if (!selectedDay.isBefore(oneDayAgo) &&
        selectedDay.isBefore(maxSelectableDay)) {
      // 상태 업데이트 및 선택한 날짜 출력
      setState(() {
        this.selectedDay = selectedDay;
        print(selectedDay);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TableCalendar(
        availableGestures: AvailableGestures.all,
        daysOfWeekHeight: 30,
        rowHeight: 50,
        locale: 'ko_kr',
        startingDayOfWeek: StartingDayOfWeek.sunday,
        calendarStyle: const CalendarStyle(
          todayTextStyle: TextStyle(color: Colors.black),
          todayDecoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
          weekendTextStyle: TextStyle(color: Colors.grey),
          defaultTextStyle: TextStyle(color: Colors.grey),
          selectedTextStyle: TextStyle(color: Colors.black),
        ),
        selectedDayPredicate: (day) {
          return !day.isBefore(now) && day.isBefore(maxSelectableDay) ||
              day.year == selectedDay.year &&
                  day.month == selectedDay.month &&
                  day.day == selectedDay.day;
        },
        onDaySelected: _onDaySelected,
        calendarBuilders: CalendarBuilders(
          selectedBuilder: (context, date, events) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: date == selectedDay ? Colors.grey : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  date.day.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            );
          },
        ),
        headerStyle: HeaderStyle(
          titleCentered: true,
          leftChevronIcon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          rightChevronIcon: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
          leftChevronMargin: const EdgeInsets.only(left: 70),
          rightChevronMargin: const EdgeInsets.only(right: 70),
          headerMargin: const EdgeInsets.only(bottom: 8),
          titleTextFormatter: (date, locale) {
            final year = date.year.toString();
            final month = date.month.toString().padLeft(2, '0');
            return '$year.$month';
          },
          titleTextStyle:
              const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          formatButtonVisible: false,
        ),
        focusedDay: now,
        firstDay: firstDayOfMonth,
        lastDay: lastDayOfMonth,
      ),
    );
  }
}
