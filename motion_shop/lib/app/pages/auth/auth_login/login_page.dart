import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:motion_shop/app/pages/auth/auth_login/controller/login_controller.dart';

import 'package:motion_shop/widget/button_app.dart';
import 'package:motion_shop/widget/field_form.dart';
import 'package:motion_shop/widget/title_form.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    Get.lazyPut(() => LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LottieBuilder.asset(
                  "assets/animation/signin.json",
                  width: 265.9,
                  height: 280,
                ),
                const TitleFormPage(
                  title: "Welcome!",
                  desc: "Happy Shopping All",
                ),
                Column(
                  children: [
                    FieldForm(
                      controller: usernameController,
                      isObsecure: false,
                      hintText: "Email",
                      icon: Icons.email_outlined,
                    ),
                    FieldForm(
                      controller: passwordController,
                      isObsecure: true,
                      hintText: "Password",
                      icon: Icons.lock_outline,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                ButtonApp(
                  onTap: () {
                    if (usernameController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      Get.snackbar(
                          "Error", "Email or Password cannot be empty");
                    } else {
                      controller.username.value = usernameController.text;
                      controller.password.value = passwordController.text;
                      controller.login();
                    }
                  },
                  text: "Login",
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: GoogleFonts.roboto(
                          fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offNamed("/register");
                      },
                      child: Text(
                        "Register",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF00623B),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
