import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/services/current_weather_services.dart';

part 'get_weather_provider.g.dart';

@riverpod
Future<WeatherModel> getWeather(GetWeatherRef ref) {
  return CurrentWeatherServices().getWeather();
}
