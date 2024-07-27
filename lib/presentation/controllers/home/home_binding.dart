import 'package:get/get.dart';
import 'package:jokee_single_serving/domain/domain.dart';
import 'package:jokee_single_serving/presentation/controllers/controllers.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetContentsUseCase(Get.find(), Get.find(), Get.find()));
    Get.lazyPut(() => HomeController(Get.find(), Get.find()));
  }
}
