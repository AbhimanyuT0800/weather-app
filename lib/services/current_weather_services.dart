import 'package:dio/dio.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/utils/const/urls.dart';

class CurrentWeatherServices {
  final dio = Dio(BaseOptions(baseUrl: Urls.baseUrl));
  Future<WeatherModel> getWeather() async {
    try {
      final Response response =
          await dio.get('weather?lat=11.25&lon=75.78&appid=${Urls.apiKey}');

      if (response.statusCode == 200) {
        final WeatherModel data = WeatherModel.fromJson(response.data);
        return data;
      } else {
        throw Exception();
      }
    } catch (e, stack) {
      throw 'Error fetching weather data: $e \n $stack';
    }
  }
}
