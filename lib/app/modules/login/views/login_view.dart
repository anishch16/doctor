import 'package:doctor/app/constants/colors.dart';
import 'package:doctor/app/constants/styles.dart';
import 'package:doctor/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../../../constants/icons.dart';
import '../../../widgets/largeButton.dart';
import '../../skipping_page/widgets/textfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40, right: 50,left: 50, top: 100),
              child: SvgPicture.asset(AppIcons.welcome),
            ),
            Text("Log In", style: largeStyle.copyWith(color: AppColors.black, fontWeight: FontWeight.bold)),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 50),
              child: CustomTextField(leadingIcon: AppIcons.person, title: "Email", hint: 'example@gmail.com',)
            ),
            const SizedBox(height: 20),
            const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 50),
                child: CustomTextField(leadingIcon: AppIcons.lock, title: "Password", hint: 'Mnbvcxz#@1', suffixIcon: Icons.remove_red_eye)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:18.0),
                  child: Text("Forget password?",
                  style: smallStyle.copyWith(color: AppColors.blue, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 50),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0),
              child: LargeButton(title: 'Log In',),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account?",
                style: smallStyle.copyWith(color: AppColors.grey, fontWeight: FontWeight.bold),),
                const SizedBox(width: 4),
                InkWell(
                  onTap: (){
                    Get.to(const SignupView());
                  },
                    child: Text("Sign Up", style: smallStyle.copyWith(color: AppColors.blue, fontWeight: FontWeight.bold),))
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
