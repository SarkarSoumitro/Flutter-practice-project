

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class Weatherpage extends StatefulWidget {
  const Weatherpage({super.key});

  @override
  State<Weatherpage> createState() => _WeatherpageState();
}

class _WeatherpageState extends State<Weatherpage> {
  //api key
  final _weatherService = WeatherService('45dd4c73ac999c30be7c8734d6f76cf2');
  Weather? _weather;

  //fetch weather
  _fetchWeather()async{
    //get the current city
    String cityName = await _weatherService.getCurrentCity();

    //get weather for city
    try{
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    //any errors
    catch(e){
      print(e);
    }
  }

  //weather animations

  //inti state
  @override
  void initState(){
    super.initState();

    //fetch weather on startup
    _fetchWeather();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //city name
            Text(_weather?.cityName ?? "loading city.."),
            //temperature
            Text('${_weather?.temperature.round()}+°C')
          ],
        ),
      ),
    );
  }
}
