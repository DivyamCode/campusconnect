import 'package:campusconnect/app/pages/home/index.dart';
import 'package:get/get.dart';

class MainHomeBinding extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut(() => MainHomeController());
  }
   
}