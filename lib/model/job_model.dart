import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_model.g.dart';

@Collection()
@JsonSerializable()
class Job {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id idIsar = Isar.autoIncrement;

  final String? id;
  final String? jobNumber;
  final String? title;
  final String? address;
  final String? primaryJobType;
  final int? urgencyTypeId;
  final int? statusId;
  final DateTime? postedDateTime;

  Job({
    this.id,
    this.jobNumber,
    this.title,
    this.address,
    this.primaryJobType,
    this.urgencyTypeId,
    this.statusId,
    this.postedDateTime,
  });

  factory Job.fromJson(Map<String, dynamic> json) => _$JobFromJson(json);

  Map<String, dynamic> toJson() => _$JobToJson(this);
}
