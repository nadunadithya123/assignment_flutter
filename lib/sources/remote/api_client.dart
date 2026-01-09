import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';
import 'package:assignment/model/job_model.dart'; // Import your Job model

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://staging.bricksandagent.com/')
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('auth/login')
  Future<User> login(@Body() LoginRequest loginRequest);

  @GET('smartView/pm/jobList')
  Future<List<Job>> getJobList(
    @Query('userId') String userId,
    @Query('pageNumber') int pageNumber,
    @Query('pageSize') int pageSize,
    @Query('headerPm') int headerPm,
    @Header('ChannelId') int channelId,
    @Header('ClientSecret') String clientSecret,
  );
}
