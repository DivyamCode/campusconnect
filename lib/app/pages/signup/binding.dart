import 'package:campusconnect/app/pages/signup/index.dart';
import 'package:get/get.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => SignupController());
  }
}