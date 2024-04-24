import 'package:flutter/material.dart';
import 'package:weather_app/utils/const/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppLocalImages.homePageBgImage))),
      ),
    );
  }
}
