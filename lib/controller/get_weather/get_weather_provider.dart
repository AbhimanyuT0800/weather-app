import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app/model/weather_model/weather_model.dart';
import 'package:weather_app/services/current_weather_services.dart';

part 'get_weather_provider.g.dart';

// provider for getting current weather

@riverpod
Future<WeatherModel> getWeather(GetWeatherRef ref,
    {required BuildContext context}) async {
  try {
    return await CurrentWeatherServices().getWeather();
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('$e')));
    throw '$e';
  }
}
