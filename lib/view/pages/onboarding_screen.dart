import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_app/utils/const/colors.dart';
import 'package:weather_app/utils/const/images.dart';
import 'package:weather_app/utils/const/text_fields.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';
import 'package:weather_app/view/pages/home_Page.dart';
import 'package:weather_app/view/widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppLocalImages.onBoardingImage),
                fit: BoxFit.contain)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth(30),
              vertical: context.screenHeight(35)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                OnboardingTextFields.onboardingHeader,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black),
              ),
              const Text(
                OnboardingTextFields.onboardingSubHeader,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey),
              ),
              SizedBox(
                height: context.screenHeight(10),
              ),
              InkWell(
                onTap: () async {
                  // await Permission.location.request();
                  // if(await Permission.location.isGranted){
                  //   log(locationpermi)
                  // }
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: getStartedButton(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
