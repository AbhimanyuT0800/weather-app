import 'package:flutter/material.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';

Container upcomingDaysWeatherDtils(
    {required BuildContext context,
    required String weatherImage,
    required String temp,
    required String date}) {
  return Container(
    width: double.infinity,
    height: context.screenHeight(70),
    decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white.withOpacity(.3),
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: context.screenWidth(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: Image.asset(weatherImage),
          ),
          Text(
            temp,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Text(date)
        ],
      ),
    ),
  );
}
