import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:machine_test/app/Api_service/api_service.dart';
import 'package:machine_test/app/routes/app_pages.dart';
import 'package:machine_test/modal/user_login.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  var chek = true.obs;
  var isLogin = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> appLogin() async {
    final apiService = ApiService();
    isLogin.value = true;
    final data = await apiService.postApi(from: {
      "email": emailC.text,
      "password": passC.text,
      "fcm_token": "test"
      // "email": "jorge@yopmail.com",
      //   "password": "Test@123",
      //   "fcm_token": "test"
    }, endpoint: "loginUser"
        // email: "jorge@yopmail.com", password: "Test@123", fcmToken: "test"
        );

    if (data != null) {
      final userLogin = userLoginFromJson(data.body);
      if (userLogin.status == 200) {
        box.write("token", userLogin.token);
        Get.snackbar("Login", userLogin.message!.toString());
        Get.toNamed(Routes.HOME);
      } else if (userLogin.status == 400) {
        Get.snackbar("Login", "${userLogin.message}");
      }
    } else {
      Get.snackbar("Login", "Login failed");
    }

    isLogin.value = false;
  }
}
