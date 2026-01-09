import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';
import 'package:assignment/model/job_model.dart';

abstract class RemoteDataInterface {
  Future<User> login(LoginRequest request);
  Future<List<Job>> getJobs({required String userId,
    required int pageNumber,
    required int pageSize,
    required int channelId,
    required String clientSecret,
    required int headerPm,});
}
