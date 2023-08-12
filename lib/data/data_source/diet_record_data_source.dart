import 'dart:io';

import 'package:diettimer/domain/model/diet_model.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
part 'diet_record_data_source.g.dart';

@DriftDatabase(tables: [DietRecords])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  Future<int> createSchedule(DietRecordsCompanion data) =>
      into(dietRecords).insert(data);

  Future<List<DietRecord>> getSchedules() => select(dietRecords).get();

  Stream<List<DietRecord>> watchScheduels() => select(dietRecords).watch();

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
