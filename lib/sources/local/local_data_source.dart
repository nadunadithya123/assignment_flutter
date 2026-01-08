import 'package:assignment/model/job_model.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:assignment/model/user_model.dart';
import 'local_data_interface.dart';

class LocalDataSource extends LocalDataInterface {
  late final Isar _isar;

  LocalDataSource() {
    _initIsar();
  }

  Future<void> _initIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [UserSchema, JobSchema],
      // your Isar schemas
      directory: dir.path,
      inspector: true, // optional for debugging
    );
  }

  @override
  Future<void> saveUser(User user) async {
    // Ensure Isar is initialized
    if (_isar == null) await _initIsar();

    await _isar.writeTxn(() async {
      await _isar.users.put(user);
      print(user.password);
    });
  }

  @override
  Future<User?> getUser() async {
    if (_isar == null) await _initIsar();

    final allUsers = await _isar.users.where().findAll();
    if (allUsers.isNotEmpty) return allUsers.last;
    return null;
  }

  @override
  Future<void> saveJobs(List<Job> jobs) async {
    await _isar.writeTxn(() async {
      await _isar.jobs.putAll(jobs);
      print('Job List : {$jobs}');
    });
  }

  @override
  Future<List<Job>> getJobs() async {
    return await _isar.jobs.where().findAll();
  }
}
