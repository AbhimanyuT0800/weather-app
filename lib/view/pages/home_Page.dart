import 'package:flutter/material.dart';
import 'package:weather_app/utils/const/colors.dart';
import 'package:weather_app/utils/const/images.dart';
import 'package:weather_app/utils/const/text_fields.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';
import 'package:weather_app/view/widgets/home_page_current_weather.dart';
import 'package:weather_app/view/widgets/upcoming_days_weather_dtils.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppLocalImages.homePageBgImage),
            fit: BoxFit.cover,
            opacity: .6,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth(20),
              vertical: context.screenHeight(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.screenHeight(30),
              ),
              ListTile(
                title: const Text(
                  HomePageTextFields.wishText,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                subtitle: const Text('Thu,31 Oct'),
                trailing: Image.asset(AppLocalImages.homePageButton),
              ),
              SizedBox(
                height: context.screenHeight(35),
              ),
              const Text(
                'KoziKode',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const Text(
                '25°C',
                style: TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
              ),
              const Text(
                'Mostly sunny',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: context.screenHeight(20),
              ),
              Container(
                width: double.infinity,
                height: context.screenHeight(100),
                decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(.7),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: context.screenWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homePageCurrentWeather(
                          heading: 'UV Index', subHeading: '7high'),
                      homePageCurrentWeather(
                          heading: 'Humidity', subHeading: '61%'),
                      homePageCurrentWeather(
                          heading: 'Pressure', subHeading: '7'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: context.screenHeight(40)),
                child: Container(
                  width: double.infinity,
                  height: context.screenHeight(400),
                  decoration: BoxDecoration(
                      color: AppColors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: context.screenWidth(20),
                        vertical: context.screenWidth(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Next days',
                          style: TextStyle(color: Colors.black),
                        ),
                        upcoming_days_weather_dtils(
                            context: context,
                            weatherImage: 'assets/icons/sunny_weather_ic.png',
                            date: 'Friday, 1 Nov',
                            temp: '22°'),
                        upcoming_days_weather_dtils(
                            context: context,
                            weatherImage: 'assets/icons/sunny_weather_ic.png',
                            date: 'Friday, 1 Nov',
                            temp: '22°'),
                        upcoming_days_weather_dtils(
                            context: context,
                            weatherImage: 'assets/icons/sunny_weather_ic.png',
                            date: 'Friday, 1 Nov',
                            temp: '22°'),
                        upcoming_days_weather_dtils(
                            context: context,
                            weatherImage: 'assets/icons/sunny_weather_ic.png',
                            date: 'Friday, 1 Nov',
                            temp: '22°'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
