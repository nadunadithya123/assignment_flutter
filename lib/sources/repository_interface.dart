import 'package:assignment/model/user_model.dart';
import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/job_model.dart';

abstract class RepositoryInterface {
  Future<void> saveUser(User user);
  Future<User?> getUser();
  Future<User> login(LoginRequest request);
  Future<List<Job>> getJobs();
}
