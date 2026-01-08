import 'package:get/get.dart';
import 'package:assignment/model/job_model.dart';
import 'package:assignment/sources/repository.dart';

class JobsController extends GetxController {
  final Repository repository = Get.find();

  final isLoading = false.obs;
  final jobs = <Job>[].obs;
  final errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchJobs();
  }

  Future<void> fetchJobs() async {
    isLoading.value = true;
    errorMessage.value = '';

    try {
      final result = await repository.getJobs();
      jobs.assignAll(result);
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }
}
