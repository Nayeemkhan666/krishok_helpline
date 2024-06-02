import 'package:flutter/material.dart';

class Weather {
  final String day;
  final String description;
  final double temperature;
  final double windSpeed;
  final double humidity;

  Weather({
    required this.day,
    required this.description,
    required this.temperature,
    required this.windSpeed,
    required this.humidity,
  });
}


class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  final Weather currentWeather = Weather(
    day: 'Today',
    description: 'Sunny',
    temperature: 30.0,
    windSpeed: 10.0,
    humidity: 60.0,
  );

  final List<Weather> weeklyForecast = [
    Weather(day: 'Mon', description: 'Cloudy', temperature: 28.0, windSpeed: 5.0, humidity: 65.0),
    Weather(day: 'Tue', description: 'Rainy', temperature: 25.0, windSpeed: 12.0, humidity: 80.0),
    Weather(day: 'Wed', description: 'Sunny', temperature: 31.0, windSpeed: 8.0, humidity: 55.0),
    Weather(day: 'Thu', description: 'Stormy', temperature: 27.0, windSpeed: 20.0, humidity: 70.0),
    Weather(day: 'Fri', description: 'Windy', temperature: 29.0, windSpeed: 15.0, humidity: 60.0),
    Weather(day: 'Sat', description: 'Snowy', temperature: -2.0, windSpeed: 10.0, humidity: 90.0),
    Weather(day: 'Sun', description: 'Foggy', temperature: 10.0, windSpeed: 3.0, humidity: 85.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16.0),
            CurrentWeatherSection(weather: currentWeather),
           // const SizedBox(height: 16.0),
            Spacer(),
            Container(
              height: 300,
              child: ForecastSection(forecast: weeklyForecast),
            ),
          ],
        ),
      ),
    );
  }
}

class CurrentWeatherSection extends StatelessWidget {
  final Weather weather;

  const CurrentWeatherSection({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Current Weather',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              weather.description,
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Temperature: ${weather.temperature}°C',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Humidity: ${weather.humidity}%',
              style: TextStyle(fontSize: 18.0),
            ),
            Text(
              'Wind Speed: ${weather.windSpeed} km/h',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
class ForecastSection extends StatelessWidget {
  final List<Weather> forecast;

  const ForecastSection({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: forecast.length,
      itemBuilder: (context, index) {
        return ForecastCard(weather: forecast[index]);
      },
    );
  }
}

class ForecastCard extends StatelessWidget {
  final Weather weather;

  const ForecastCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.green.shade200,
        height: 300,
        width: 150.0,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              weather.day,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              weather.description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              '${weather.temperature}°C',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              'Wind: ${weather.windSpeed} km/h',
              style: TextStyle(fontSize: 14.0),
            ),
            Text(
              'Humidity: ${weather.humidity}%',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
      ),
    );
  }
}