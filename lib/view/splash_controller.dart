import 'package:form_wala/view/login_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), (){
      Get.offAll(() => LoginScreen());
    });
    super.onInit();
  }
}