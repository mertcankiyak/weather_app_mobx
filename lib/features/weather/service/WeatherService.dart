import 'package:flutter/material.dart';
import 'package:weather_app_mobx/features/weather/model/weather_model.dart';
import 'package:weather_app_mobx/features/weather/service/IWeatherService.dart';
import 'package:vexana/vexana.dart';
import 'package:weather_app_mobx/product/constants/AppConstants.dart';
import 'package:weather_app_mobx/product/enum/LocationEnum.dart';
import 'package:weather_app_mobx/product/enum/ServiceEnum.dart';
import 'package:weather_app_mobx/product/extensions/ServiceExtensions.dart';
import 'package:weather_app_mobx/product/extensions/LocationExtensions.dart';

class WeatherService extends IWeatherService {
  final NetworkManager _networkManager = NetworkManager(
      options: BaseOptions(baseUrl: "https://api.weatherapi.com"));

  @override
  Future<Weather?> fetchWeather({LocationName? locationName}) async {
    try {
      final response = await _networkManager.send<Weather, Weather>(
          ServicePath.CURRENT.rawValue +
              apiKey +
              "&q=" +
              locationName!.rawValue,
          parseModel: Weather(),
          method: RequestType.GET);
      return response.data;
    } catch (e) {
      //Error
    }
  }
}
