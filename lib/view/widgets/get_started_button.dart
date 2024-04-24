import 'package:flutter/material.dart';
import 'package:weather_app/utils/const/colors.dart';
import 'package:weather_app/utils/const/text_fields.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';

Container getStartedButton(BuildContext context) {
  return Container(
    width: double.infinity,
    height: context.screenHeight(80),
    decoration: BoxDecoration(
      color: AppColors.darkBlue,
      borderRadius: BorderRadius.circular(30),
    ),
    child: const Center(
        child: Text(
      OnboardingTextFields.onboardingButtonText,
      style: TextStyle(
          color: AppColors.white, fontSize: 20, fontWeight: FontWeight.w500),
    )),
  );
}
