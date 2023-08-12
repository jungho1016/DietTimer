// import 'package:diettimer/domain/repositoy/statistics_repository.dart';
// import 'package:diettimer/data/data_source/diet_record_data_source.dart';
//
// class StaticsTicsRepositoyImpl implements StaticsRepository {
//   final DietRecordDatabase _db;
//
//   StaticsTicsRepositoyImpl(this._db);
//
//   @override
//   Future<int> getDailyTotal(Duration duration) async {
//     final now = DateTime.now();
//     final startDate = DateTime(now.year, now.month, now.day, 0, 0, 0);
//     final endDate = startDate.add(duration);
//     final dailyRecords = await _db.getAllTimerRecords().then((records) =>
//         records
//             .where((record) =>
//                 record.recordDateTime.isAfter(startDate) &&
//                 record.recordDateTime.isBefore(endDate) &&
//                 record.timeInterval == "일")
//             .toList());
//
//     final totalDuration = dailyRecords.fold<int>(
//         0, (sum, record) => sum + record.durationInSeconds);
//
//     return totalDuration;
//   }
// }
