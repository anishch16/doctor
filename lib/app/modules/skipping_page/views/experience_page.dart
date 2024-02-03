import 'package:doctor/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/radio_tile.dart';
import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../widgets/sliding_button.dart';
import '../widgets/changing_pages.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(35), bottomRight: Radius.circular(35)),
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      AppColors.lightBlue.withOpacity(0),
                      AppColors.lightBlue.withOpacity(0.075),
                      AppColors.lightBlue.withOpacity(0.15),
                      AppColors.lightBlue.withOpacity(0.225),
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.5,
                child: const ChangingPages(
                  title: "Tailor Your Experience",
                  subTitle:
                  "To provide you with a good experience, please select your role below:",
                  image: AppIcons.experience,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RadioButtonColumn(
                    titles: const ['I am a Doctor', 'I am a Patient', 'I am a Pharmacist'],
                    initialValue: 1,
                    onChanged: (value) {
                      print("Selected value: $value");
                    },
                  ),
                ],
              ),
              const Spacer(),
               SlidingButton(
                 onComplete: (){
                   Get.to(LoginView());
                 },
               ),

            ],
          ),
        ),
      ),
    );
  }
}
