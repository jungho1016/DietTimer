import 'package:drift/drift.dart';

class DietRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get startTime => dateTime()();
  DateTimeColumn get endTime => dateTime()(); // 필드 이름 변경
  IntColumn get durationInSeconds => integer()();
  DateTimeColumn get createdAt => dateTime().clientDefault(
        () => DateTime.now(),
      )();
  TextColumn get timeInterval => text()();
  RealColumn get weight => real()();
}
