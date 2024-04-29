import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/controller/get_weather/get_weather_provider.dart';
import 'package:weather_app/view/pages/weather_details_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ref.watch(getWeatherProvider).when(
            data: (data) {
              return WeatherDetailsPage(
                model: data,
                ref: ref,
              );
            },
            error: (error, stackTrace) => Center(
              child: Text('An Error found : $error'),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
