import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/controller/get_weather/get_weather_provider.dart';
import 'package:weather_app/view/pages/weather_details_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // checks current weather is available
      body: ref.watch(getWeatherProvider(context: context)).when(
            data: (data) {
              return WeatherDetailsPage(
                model: data,
              );
            },
            // when error found
            error: (error, stackTrace) => Center(
              child: Text('An Error found : $error'),
            ),
            // loading screen
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
    );
  }
}
