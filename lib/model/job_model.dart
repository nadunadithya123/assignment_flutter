import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'job_model.g.dart';

@Collection()
@JsonSerializable()
class Job {
  Id idIsar = Isar.autoIncrement;

  late String id;
  late String jobNumber;
  late String title;
  late String address;
  late String primaryJobType;
  late int urgencyTypeId;
  late int statusId;
  late DateTime postedDateTime;

  Job({
    required this.id,
    required this.jobNumber,
    required this.title,
    required this.address,
    required this.primaryJobType,
    required this.urgencyTypeId,
    required this.statusId,
    required this.postedDateTime,
  });

  factory Job.fromJson(Map<String, dynamic> json) {

    
    return Job(
      id: json['id'] ?? '',
      jobNumber: json['jobNumber'] ?? '',
      title: json['title'] ?? '',
      address: json['address'] ?? '',
      primaryJobType: json['primaryJobType'] ?? '',
      urgencyTypeId: json['urgencyTypeId'] ?? 0,
      statusId: json['statusId'] ?? 0,
      postedDateTime: json['postedDateTime'] != null
          ? DateTime.parse(json['postedDateTime'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => _$JobToJson(this);
}
