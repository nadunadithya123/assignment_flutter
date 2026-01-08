import 'package:assignment/model/login_request_model.dart';
import 'package:assignment/model/user_model.dart';

abstract class RemoteDataInterface {
  Future<User> login(LoginRequest request);
}
