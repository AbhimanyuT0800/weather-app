import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/model/future_forecast/weather_for_four_days.dart';
import 'package:weather_app/utils/const/urls.dart';

class FutureForecastWeatherServices {
  final dio = Dio(BaseOptions(baseUrl: Urls.baseUrl));
  Future<WeatherForFourDays> getWeather() async {
    try {
      // final Response response = await dio.get(
      //     'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=3289ee2394a4802df9dc0585e9ed4154');
      final Response response = await dio
          .get('forecast/hourly?lat=11.25&lon=75.78&appid=${Urls.apiKey}');
      log(response.statusCode.toString());

      if (response.statusCode == 200) {
        log('message');
        final WeatherForFourDays data =
            WeatherForFourDays.fromJson(response.data);
        log(data.toString());
        return data;
      } else {
        log(' asdfgh');
        throw 'Something went wrong';
      }
    } catch (e, stack) {
      log('error');
      throw 'Error fetching weather data: $e \n $stack';
    }
  }
}
