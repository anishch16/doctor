import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../constants/styles.dart';
import '../controllers/skipping_controller.dart';
import '../widgets/changing_pages.dart';
import 'experience_page.dart';

class SkippingView extends GetView<SkippingController> {
  const SkippingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(3, (index) =>
     ChangingPages(
      title: setTitle(index),
      subTitle: setSubTitle(index),
      image:setImage(index),
      ),
        );
    final controller = PageController();
    RxInt count = 0.obs ;
    return SafeArea(
      child: Material(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
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
                height: MediaQuery.of(context).size.height * 0.8,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              const Spacer(),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.to(const ExperiencePage());
               },
                        child: Text("Skip", style: normalStyle.copyWith(color: AppColors.lightGrey, fontWeight: FontWeight.bold, letterSpacing: 2),)),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: const WormEffect(
                        dotHeight: 6,
                        dotWidth: 6,
                        type: WormType.thinUnderground,
                      ),
                    ),
                    InkWell(
                        onTap: (){
                          count.value++;
                          print("value of Count::::$count");
                          if (count.value < 3) {
                            controller.animateToPage(count.value, duration: Duration(milliseconds: 500), curve: Curves.ease); // Change highlighted dot
                          } else {
                            Get.to(const ExperiencePage());
                          }
                        },
                        child: Text("Next", style: normalStyle.copyWith(color: AppColors.blue,fontWeight: FontWeight.bold, letterSpacing: 2),))
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      )
    );
  }

  String setTitle(int index){
    if(index == 0) {
      return "Seamless Doctor Connections";
    }
    else if (index == 1) {
      return "Medications at Your Doorstep";
    } else {
      return "Find Pharmacies Nearby";
    }
  }
  String setSubTitle(int index){
    if(index == 0) {
      return "Skip the queues and Easily connect with top doctors at your fingertips.";
    }
    else if (index == 1) {
      return "Skip the queues and Easily connect with top doctors at your fingertips.";
    } else {
      return " Need a pharmacy? Our platform locates the nearest ones for you. Prioritize your comfort.";
    }
  }
  String setImage(int index){
    if(index == 0) {
      return AppIcons.connection;
    }
    else if (index == 1) {
      return AppIcons.medication;
    } else {
      return AppIcons.pharmacy;
    }
  }
}
