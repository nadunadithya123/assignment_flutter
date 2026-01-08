// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetJobCollection on Isar {
  IsarCollection<Job> get jobs => this.collection();
}

const JobSchema = CollectionSchema(
  name: r'Job',
  id: -5961302972855324388,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'jobNumber': PropertySchema(
      id: 2,
      name: r'jobNumber',
      type: IsarType.string,
    ),
    r'postedDateTime': PropertySchema(
      id: 3,
      name: r'postedDateTime',
      type: IsarType.dateTime,
    ),
    r'primaryJobType': PropertySchema(
      id: 4,
      name: r'primaryJobType',
      type: IsarType.string,
    ),
    r'statusId': PropertySchema(
      id: 5,
      name: r'statusId',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 6,
      name: r'title',
      type: IsarType.string,
    ),
    r'urgencyTypeId': PropertySchema(
      id: 7,
      name: r'urgencyTypeId',
      type: IsarType.long,
    )
  },
  estimateSize: _jobEstimateSize,
  serialize: _jobSerialize,
  deserialize: _jobDeserialize,
  deserializeProp: _jobDeserializeProp,
  idName: r'idIsar',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _jobGetId,
  getLinks: _jobGetLinks,
  attach: _jobAttach,
  version: '3.1.0+1',
);

int _jobEstimateSize(
  Job object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.address.length * 3;
  bytesCount += 3 + object.id.length * 3;
  bytesCount += 3 + object.jobNumber.length * 3;
  bytesCount += 3 + object.primaryJobType.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _jobSerialize(
  Job object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.jobNumber);
  writer.writeDateTime(offsets[3], object.postedDateTime);
  writer.writeString(offsets[4], object.primaryJobType);
  writer.writeLong(offsets[5], object.statusId);
  writer.writeString(offsets[6], object.title);
  writer.writeLong(offsets[7], object.urgencyTypeId);
}

Job _jobDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Job(
    address: reader.readString(offsets[0]),
    id: reader.readString(offsets[1]),
    jobNumber: reader.readString(offsets[2]),
    postedDateTime: reader.readDateTime(offsets[3]),
    primaryJobType: reader.readString(offsets[4]),
    statusId: reader.readLong(offsets[5]),
    title: reader.readString(offsets[6]),
    urgencyTypeId: reader.readLong(offsets[7]),
  );
  object.idIsar = id;
  return object;
}

P _jobDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _jobGetId(Job object) {
  return object.idIsar;
}

List<IsarLinkBase<dynamic>> _jobGetLinks(Job object) {
  return [];
}

void _jobAttach(IsarCollection<dynamic> col, Id id, Job object) {
  object.idIsar = id;
}

extension JobQueryWhereSort on QueryBuilder<Job, Job, QWhere> {
  QueryBuilder<Job, Job, QAfterWhere> anyIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension JobQueryWhere on QueryBuilder<Job, Job, QWhereClause> {
  QueryBuilder<Job, Job, QAfterWhereClause> idIsarEqualTo(Id idIsar) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: idIsar,
        upper: idIsar,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterWhereClause> idIsarNotEqualTo(Id idIsar) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: idIsar, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: idIsar, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Job, Job, QAfterWhereClause> idIsarGreaterThan(Id idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: idIsar, includeLower: include),
      );
    });
  }

  QueryBuilder<Job, Job, QAfterWhereClause> idIsarLessThan(Id idIsar,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: idIsar, includeUpper: include),
      );
    });
  }

  QueryBuilder<Job, Job, QAfterWhereClause> idIsarBetween(
    Id lowerIdIsar,
    Id upperIdIsar, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIdIsar,
        includeLower: includeLower,
        upper: upperIdIsar,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JobQueryFilter on QueryBuilder<Job, Job, QFilterCondition> {
  QueryBuilder<Job, Job, QAfterFilterCondition> addressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsarEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsarGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsarLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'idIsar',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> idIsarBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'idIsar',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jobNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jobNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> jobNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jobNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> postedDateTimeEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> postedDateTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> postedDateTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postedDateTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> postedDateTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postedDateTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryJobType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryJobType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryJobType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryJobType',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> primaryJobTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryJobType',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> statusIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'statusId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> statusIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'statusId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> statusIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'statusId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> statusIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'statusId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> urgencyTypeIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urgencyTypeId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> urgencyTypeIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urgencyTypeId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> urgencyTypeIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urgencyTypeId',
        value: value,
      ));
    });
  }

  QueryBuilder<Job, Job, QAfterFilterCondition> urgencyTypeIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urgencyTypeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension JobQueryObject on QueryBuilder<Job, Job, QFilterCondition> {}

extension JobQueryLinks on QueryBuilder<Job, Job, QFilterCondition> {}

extension JobQuerySortBy on QueryBuilder<Job, Job, QSortBy> {
  QueryBuilder<Job, Job, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByJobNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByJobNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByPostedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postedDateTime', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByPostedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postedDateTime', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByPrimaryJobType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryJobType', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByPrimaryJobTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryJobType', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByStatusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusId', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByStatusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusId', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByUrgencyTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urgencyTypeId', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> sortByUrgencyTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urgencyTypeId', Sort.desc);
    });
  }
}

extension JobQuerySortThenBy on QueryBuilder<Job, Job, QSortThenBy> {
  QueryBuilder<Job, Job, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByIdIsar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByIdIsarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'idIsar', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByJobNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByJobNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobNumber', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByPostedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postedDateTime', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByPostedDateTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postedDateTime', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByPrimaryJobType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryJobType', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByPrimaryJobTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryJobType', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByStatusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusId', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByStatusIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'statusId', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByUrgencyTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urgencyTypeId', Sort.asc);
    });
  }

  QueryBuilder<Job, Job, QAfterSortBy> thenByUrgencyTypeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urgencyTypeId', Sort.desc);
    });
  }
}

extension JobQueryWhereDistinct on QueryBuilder<Job, Job, QDistinct> {
  QueryBuilder<Job, Job, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctById({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByJobNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByPostedDateTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postedDateTime');
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByPrimaryJobType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryJobType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByStatusId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'statusId');
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Job, Job, QDistinct> distinctByUrgencyTypeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urgencyTypeId');
    });
  }
}

extension JobQueryProperty on QueryBuilder<Job, Job, QQueryProperty> {
  QueryBuilder<Job, int, QQueryOperations> idIsarProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'idIsar');
    });
  }

  QueryBuilder<Job, String, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Job, String, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Job, String, QQueryOperations> jobNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobNumber');
    });
  }

  QueryBuilder<Job, DateTime, QQueryOperations> postedDateTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postedDateTime');
    });
  }

  QueryBuilder<Job, String, QQueryOperations> primaryJobTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryJobType');
    });
  }

  QueryBuilder<Job, int, QQueryOperations> statusIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statusId');
    });
  }

  QueryBuilder<Job, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<Job, int, QQueryOperations> urgencyTypeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urgencyTypeId');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      id: json['id'] as String,
      jobNumber: json['jobNumber'] as String,
      title: json['title'] as String,
      address: json['address'] as String,
      primaryJobType: json['primaryJobType'] as String,
      urgencyTypeId: (json['urgencyTypeId'] as num).toInt(),
      statusId: (json['statusId'] as num).toInt(),
      postedDateTime: DateTime.parse(json['postedDateTime'] as String),
    )..idIsar = (json['idIsar'] as num).toInt();

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'idIsar': instance.idIsar,
      'id': instance.id,
      'jobNumber': instance.jobNumber,
      'title': instance.title,
      'address': instance.address,
      'primaryJobType': instance.primaryJobType,
      'urgencyTypeId': instance.urgencyTypeId,
      'statusId': instance.statusId,
      'postedDateTime': instance.postedDateTime.toIso8601String(),
    };
