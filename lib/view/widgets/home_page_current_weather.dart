import 'package:flutter/material.dart';

Column homePageCurrentWeather(
    {required String heading, required String subHeading}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.sunny,
        color: Colors.grey,
        size: 15,
      ),
      Text(
        heading,
        style: TextStyle(fontSize: 16),
      ),
      Text(
        subHeading,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      )
    ],
  );
}
