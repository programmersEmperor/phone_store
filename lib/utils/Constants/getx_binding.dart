import 'package:get/get.dart';
import 'package:phone_store/Controllers/auth/authController.dart';

class GetxBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AuthController());
  }
}