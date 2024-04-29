import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/model/future_forecast/weather_for_four_days.dart';
import 'package:weather_app/services/future_forecast_services.dart';

part 'forecasted_weather.g.dart';

@riverpod
Future<WeatherForFourDays> getForecastedWeather(GetForecastedWeatherRef ref) {
  return FutureForecastWeatherServices().getWeather();
}
