import 'package:assignment/model/job_model.dart';
import 'package:assignment/model/user_model.dart';

abstract class LocalDataInterface {
  Future<void> saveUser(User user);
  Future<User?> getUser();
  Future<void> saveJobs(List<Job> jobs);
  Future<List<Job>> getJobs();
}
