import 'package:assignment/model/job_model.dart';
import 'package:assignment/sources/local/local_data_source.dart';
import 'package:assignment/model/user_model.dart';
import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/sources/remote/remote_data_source.dart';
import 'package:assignment/sources/repository_interface.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class Repository implements RepositoryInterface {
  final RemoteDataSource _remoteDataSource = RemoteDataSource();
  final LocalDataSource _localDataSource = LocalDataSource();

  Future<bool> _isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    return connectivityResult != ConnectivityResult.none;
  }

  @override
  Future<void> saveUser(User user) async {
    await _localDataSource.saveUser(user);
  }

  @override
  Future<User?> getUser() async {
    return await _localDataSource.getUser();
  }

  @override
  Future<User> login(LoginRequest request) async {
    final online = await _isConnected();

    if (online) {
      final user = await _remoteDataSource.login(request);

      await _localDataSource.saveUser(user);
      return user;
    } else {
      final cached = await _localDataSource.getUser();
      if (cached != null) return cached;

      throw Exception("No internet and no cached user available");
    }
  }


  @override
  Future<List<Job>> getJobs() async {
    final online = await _isConnected();
    final user = await _localDataSource.getUser();

    if (user == null || user.userId?.isEmpty == true) {
      throw Exception('User not logged in');
    }

    if (online) {
      final jobs = await _remoteDataSource.getJobs(
        userId: user.userId ?? '',
        pageNumber: 1,
        pageSize: 10,
        channelId: 2,
        clientSecret: '134C18DDDE478DDE895BC5769FB1C',
        headerPm: 102,
      );

      await _localDataSource.saveJobs(jobs);
      return jobs;
    } else {
      final cachedJobs = await _localDataSource.getJobs();
      if (cachedJobs.isNotEmpty) return cachedJobs;

      throw Exception('No internet and no cached jobs available');
    }
  }
}
