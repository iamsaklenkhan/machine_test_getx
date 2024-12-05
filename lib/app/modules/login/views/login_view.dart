import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:machine_test/app/maxin/validesion.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with InputValidationMixin {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 30),
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 120,
              ),
              appRow(),
              const SizedBox(
                height: 20,
              ),
              appTextFrom(
                  validator: validateEmail, controller: controller.emailC),
              Obx(
                () => appTextFrom(
                  name: "Password",
                  obscureText: controller.chek.value,
                  controller: controller.passC,
                  validator: validatePassword,
                  icone: InkWell(
                    onTap: () {
                      controller.chek.value = !controller.chek.value;
                    },
                    child: !controller.chek.value
                        ? const Icon(CupertinoIcons.eye)
                        : const Icon(CupertinoIcons.eye_slash_fill),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              appButton(
                onTap: () {
                  if (controller.formKey.currentState!.validate()) {
                    controller.appLogin();
                  }
                },
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF66315)),
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              appButton1(),
              const SizedBox(
                height: 20,
              ),
              appButton1(
                  name: "Facebook", path: "assets/images/facebook_logo.png"),
            ],
          ),
        ),
      ),
    );
  }

  appRow() {
    return Row(
      children: [
        Container(
          width: 200,
          height: 40,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black, width: 3))),
          child: const Text(
            "Email",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          width: 200,
          height: 40,
          alignment: Alignment.center,
          child: const Text(
            "Phone",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey),
          ),
        )
      ],
    );
  }

  Widget appTextFrom(
      {String? name,
      Widget? icone,
      bool obscureText = false,
      TextEditingController? controller,
      String? Function(String?)? validator}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Text(
              name ?? "Email",
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              isDense: true,
              suffixIcon: icone,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey, width: 2)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey, width: 2)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Colors.grey, width: 2)),
            ),
          )
        ],
      ),
    );
  }

  Widget appButton({void Function()? onTap}) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        child: InkWell(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            height: 45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFF803D),
                  Color(0xffDD560E),
                ],
              ),
            ),
            child: controller.isLogin.value
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
          ),
        ),
      ),
    );
  }

  Widget appButton1({
    String? name,
    String? path,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(path ?? "assets/images/SVG.png"),
          const SizedBox(
            width: 10,
          ),
          Text(name ?? "Google"),
        ],
      ),
    );
  }
}
