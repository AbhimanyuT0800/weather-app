import 'package:flutter/material.dart';
import 'package:weather_app/controller/functions/math_problems.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/utils/const/colors.dart';
import 'package:weather_app/utils/const/images.dart';
import 'package:weather_app/utils/const/text_fields.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';
import 'package:weather_app/view/widgets/home_page_current_weather.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({
    super.key,
    required this.model,
  });
  final WeatherModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            const Spacer(
              flex: 1,
            ),
            Text(
              model.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              //  convert f-heat to temp
              MathProblems.findTemp(model.main.temp),
              style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w500),
            ),
            // how is the weather now
            Text(
              'Mostly ${model.weather[0].main}',
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
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
                    // find wind speed
                    homePageCurrentWeather(
                        heading: 'Wind',
                        subHeading:
                            MathProblems.findWindSpeed(model.wind.speed)),
                    // find current humidity
                    homePageCurrentWeather(
                        heading: 'Humidity',
                        subHeading:
                            MathProblems.findHumidity(model.main.humidity)),
                    // find current pressure
                    homePageCurrentWeather(
                        heading: 'Pressure',
                        subHeading:
                            MathProblems.findPressure(model.main.pressure)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: context.screenHeight(40)),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
