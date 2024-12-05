import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:machine_test/app/Api_service/api_service.dart';
import 'package:machine_test/modal/all_user.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final box = GetStorage();

  var isLogin = false.obs;
  var isOnline = false.obs;
  @override
  void onInit() {
    getData();
    super.onInit();
  }

  AllUser? allUser;
  Future<void> getData({
    Map<String, String>? from,
  }) async {
    isLogin.value = true;
    final apiService = ApiService();
    final token = box.read("token");
    // print("=========$token");
    final jsonString = await apiService.postApiWithToken(
        endpoint: "get_all_users", bearerToken: token, from: from ?? {});
    // print("=======>${jsonString!.body}");
    // print("=======>${}");
    allUser = allUserFromJson(jsonString!.body);
    isLogin.value = false;
    update();
    // get_all_users
  }
}
