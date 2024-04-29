import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/controller/forecasted_weather/forecasted_weather.dart';
import 'package:weather_app/controller/functions/math_problems.dart';
import 'package:weather_app/model/future_forecast/weather_for_four_days.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/services/future_forecast_services.dart';
import 'package:weather_app/utils/const/colors.dart';
import 'package:weather_app/utils/const/images.dart';
import 'package:weather_app/utils/const/text_fields.dart';
import 'package:weather_app/utils/dynamic_sizes.dart';
import 'package:weather_app/view/widgets/home_page_current_weather.dart';
import 'package:weather_app/view/widgets/upcoming_days_weather_dtils.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key, required this.model, required this.ref});
  final WeatherModel model;
  final WidgetRef ref;

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
            Spacer(
              flex: 1,
            ),
            Text(
              model.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              // '25°C',
              // current temp
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
              // child: Container(
              //   width: double.infinity,
              //   height: context.screenHeight(400),
              //   decoration: BoxDecoration(
              //       color: AppColors.white.withOpacity(.4),
              //       borderRadius: BorderRadius.circular(20)),
              //   child: Padding(
              //     padding: EdgeInsets.symmetric(
              //         horizontal: context.screenWidth(20),
              //         vertical: context.screenWidth(10)),
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         const Text(
              //           'Next days',
              //           style: TextStyle(color: Colors.black),
              //         ),
              //         upcomingDaysWeatherDtils(
              //             context: context,
              //             weatherImage: 'assets/icons/sunny_weather_ic.png',
              //             date: MathProblems.getTimeStamp(model.timezone),
              //             temp: 'rr'),
              //         upcomingDaysWeatherDtils(
              //             context: context,
              //             weatherImage: 'assets/icons/sunny_weather_ic.png',
              //             date: 'Friday, 1 Nov',
              //             temp: '22°'),
              //         upcomingDaysWeatherDtils(
              //             context: context,
              //             weatherImage: 'assets/icons/sunny_weather_ic.png',
              //             date: 'Friday, 1 Nov',
              //             temp: '22°'),
              //         upcomingDaysWeatherDtils(
              //             context: context,
              //             weatherImage: 'assets/icons/sunny_weather_ic.png',
              //             date: 'Friday, 1 Nov',
              //             temp: '22°'),
              //       ],
              //     ),
              //   ),
              // ),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
