import 'package:weather_app_mobx/features/weather/model/weather_model.dart';
import 'package:weather_app_mobx/product/enum/LocationEnum.dart';

abstract class IWeatherService {
  Future<Weather?> fetchWeather({LocationName? locationName});
}
