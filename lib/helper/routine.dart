import 'package:assignment/views/jobs/jobs_binding.dart';
import 'package:assignment/views/login/login_binding.dart';
import 'package:get/get.dart';
import 'package:assignment/views/jobs/jobs_view.dart';
import 'package:assignment/views/login/login_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/jobs',
      page: () => JobsView(),
      binding: JobsBinding(),
    ),
  ];
}
