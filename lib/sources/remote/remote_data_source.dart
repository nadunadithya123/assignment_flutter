import 'package:dio/dio.dart';
import 'package:assignment/model/job_model.dart';
import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';
import 'remote_data_interface.dart';
import 'api_client.dart';

class RemoteDataSource extends RemoteDataInterface {
  Dio? _dio;
  late ApiClient apiClient;
  CancelToken? _cancelToken;

  RemoteDataSource() {
    _initApiClient();
  }

  Future<void> _initApiClient() async {
    _dio = Dio();
    _dio!.options.connectTimeout = const Duration(seconds: 10);
    _dio!.options.receiveTimeout = const Duration(seconds: 10);
    _dio!.options.sendTimeout = const Duration(seconds: 10);
    _dio!.options.contentType = Headers.jsonContentType;
    _dio!.options.baseUrl = 'https://staging.bricksandagent.com/';

    _dio!.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    apiClient = ApiClient(_dio!, baseUrl: _dio!.options.baseUrl);
  }

  @override
  Future<User> login(LoginRequest request) async {
    try {
      final user = await apiClient.login(request);
      if (user.userId == null || user.userId.isEmpty) {
        throw Exception(user.message ?? 'Login failed');
      }
      return User(
        userId: user.userId,
        email: user.email ?? request.email,
        password: request.password,
        message: user.message,
      );
    } on DioError catch (dioError) {
      throw Exception('Login failed: ${dioError.message}');
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  Future<List<Job>> getJobs({
    required String userId,
    required int pageNumber,
    required int pageSize,
    required int channelId,
    required String clientSecret,
    required int headerPm,
  }) async {
    try {
      final jobs = await apiClient.getJobList(
        userId,
        pageNumber,
        pageSize,
        channelId,
        headerPm,
        clientSecret,
      );
      return jobs;
    } on DioError catch (dioError) {
      throw Exception('Fetch jobs failed: ${dioError.message}');
    } catch (e) {
      throw Exception('Fetch jobs failed: $e');
    }
  }
}
