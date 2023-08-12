// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diet_record_data_source.dart';

// ignore_for_file: type=lint
class $DietRecordsTable extends DietRecords
    with TableInfo<$DietRecordsTable, DietRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DietRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _durationInSecondsMeta =
      const VerificationMeta('durationInSeconds');
  @override
  late final GeneratedColumn<int> durationInSeconds = GeneratedColumn<int>(
      'duration_in_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  static const VerificationMeta _timeIntervalMeta =
      const VerificationMeta('timeInterval');
  @override
  late final GeneratedColumn<String> timeInterval = GeneratedColumn<String>(
      'time_interval', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
      'weight', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        startTime,
        endTime,
        durationInSeconds,
        createdAt,
        timeInterval,
        weight
      ];
  @override
  String get aliasedName => _alias ?? 'diet_records';
  @override
  String get actualTableName => 'diet_records';
  @override
  VerificationContext validateIntegrity(Insertable<DietRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    } else if (isInserting) {
      context.missing(_endTimeMeta);
    }
    if (data.containsKey('duration_in_seconds')) {
      context.handle(
          _durationInSecondsMeta,
          durationInSeconds.isAcceptableOrUnknown(
              data['duration_in_seconds']!, _durationInSecondsMeta));
    } else if (isInserting) {
      context.missing(_durationInSecondsMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('time_interval')) {
      context.handle(
          _timeIntervalMeta,
          timeInterval.isAcceptableOrUnknown(
              data['time_interval']!, _timeIntervalMeta));
    } else if (isInserting) {
      context.missing(_timeIntervalMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight']!, _weightMeta));
    } else if (isInserting) {
      context.missing(_weightMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DietRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DietRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time'])!,
      durationInSeconds: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}duration_in_seconds'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      timeInterval: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}time_interval'])!,
      weight: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}weight'])!,
    );
  }

  @override
  $DietRecordsTable createAlias(String alias) {
    return $DietRecordsTable(attachedDatabase, alias);
  }
}

class DietRecord extends DataClass implements Insertable<DietRecord> {
  final int id;
  final DateTime startTime;
  final DateTime endTime;
  final int durationInSeconds;
  final DateTime createdAt;
  final String timeInterval;
  final double weight;
  const DietRecord(
      {required this.id,
      required this.startTime,
      required this.endTime,
      required this.durationInSeconds,
      required this.createdAt,
      required this.timeInterval,
      required this.weight});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['start_time'] = Variable<DateTime>(startTime);
    map['end_time'] = Variable<DateTime>(endTime);
    map['duration_in_seconds'] = Variable<int>(durationInSeconds);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['time_interval'] = Variable<String>(timeInterval);
    map['weight'] = Variable<double>(weight);
    return map;
  }

  DietRecordsCompanion toCompanion(bool nullToAbsent) {
    return DietRecordsCompanion(
      id: Value(id),
      startTime: Value(startTime),
      endTime: Value(endTime),
      durationInSeconds: Value(durationInSeconds),
      createdAt: Value(createdAt),
      timeInterval: Value(timeInterval),
      weight: Value(weight),
    );
  }

  factory DietRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DietRecord(
      id: serializer.fromJson<int>(json['id']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime>(json['endTime']),
      durationInSeconds: serializer.fromJson<int>(json['durationInSeconds']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      timeInterval: serializer.fromJson<String>(json['timeInterval']),
      weight: serializer.fromJson<double>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime>(endTime),
      'durationInSeconds': serializer.toJson<int>(durationInSeconds),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'timeInterval': serializer.toJson<String>(timeInterval),
      'weight': serializer.toJson<double>(weight),
    };
  }

  DietRecord copyWith(
          {int? id,
          DateTime? startTime,
          DateTime? endTime,
          int? durationInSeconds,
          DateTime? createdAt,
          String? timeInterval,
          double? weight}) =>
      DietRecord(
        id: id ?? this.id,
        startTime: startTime ?? this.startTime,
        endTime: endTime ?? this.endTime,
        durationInSeconds: durationInSeconds ?? this.durationInSeconds,
        createdAt: createdAt ?? this.createdAt,
        timeInterval: timeInterval ?? this.timeInterval,
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('DietRecord(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('durationInSeconds: $durationInSeconds, ')
          ..write('createdAt: $createdAt, ')
          ..write('timeInterval: $timeInterval, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, startTime, endTime, durationInSeconds,
      createdAt, timeInterval, weight);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DietRecord &&
          other.id == this.id &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.durationInSeconds == this.durationInSeconds &&
          other.createdAt == this.createdAt &&
          other.timeInterval == this.timeInterval &&
          other.weight == this.weight);
}

class DietRecordsCompanion extends UpdateCompanion<DietRecord> {
  final Value<int> id;
  final Value<DateTime> startTime;
  final Value<DateTime> endTime;
  final Value<int> durationInSeconds;
  final Value<DateTime> createdAt;
  final Value<String> timeInterval;
  final Value<double> weight;
  const DietRecordsCompanion({
    this.id = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.durationInSeconds = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.timeInterval = const Value.absent(),
    this.weight = const Value.absent(),
  });
  DietRecordsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime startTime,
    required DateTime endTime,
    required int durationInSeconds,
    this.createdAt = const Value.absent(),
    required String timeInterval,
    required double weight,
  })  : startTime = Value(startTime),
        endTime = Value(endTime),
        durationInSeconds = Value(durationInSeconds),
        timeInterval = Value(timeInterval),
        weight = Value(weight);
  static Insertable<DietRecord> custom({
    Expression<int>? id,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? durationInSeconds,
    Expression<DateTime>? createdAt,
    Expression<String>? timeInterval,
    Expression<double>? weight,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (durationInSeconds != null) 'duration_in_seconds': durationInSeconds,
      if (createdAt != null) 'created_at': createdAt,
      if (timeInterval != null) 'time_interval': timeInterval,
      if (weight != null) 'weight': weight,
    });
  }

  DietRecordsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? startTime,
      Value<DateTime>? endTime,
      Value<int>? durationInSeconds,
      Value<DateTime>? createdAt,
      Value<String>? timeInterval,
      Value<double>? weight}) {
    return DietRecordsCompanion(
      id: id ?? this.id,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      durationInSeconds: durationInSeconds ?? this.durationInSeconds,
      createdAt: createdAt ?? this.createdAt,
      timeInterval: timeInterval ?? this.timeInterval,
      weight: weight ?? this.weight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (durationInSeconds.present) {
      map['duration_in_seconds'] = Variable<int>(durationInSeconds.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (timeInterval.present) {
      map['time_interval'] = Variable<String>(timeInterval.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DietRecordsCompanion(')
          ..write('id: $id, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('durationInSeconds: $durationInSeconds, ')
          ..write('createdAt: $createdAt, ')
          ..write('timeInterval: $timeInterval, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $DietRecordsTable dietRecords = $DietRecordsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dietRecords];
}
