import 'package:mobx/mobx.dart';
import 'package:weather_app_mobx/features/weather/model/weather_model.dart';
import 'package:weather_app_mobx/features/weather/service/WeatherService.dart';
import 'package:weather_app_mobx/product/enum/LocationEnum.dart';
part 'weather_viewmodel.g.dart';

class WeatherViewModel = _WeatherViewModelBase with _$WeatherViewModel;

abstract class _WeatherViewModelBase with Store {
  final WeatherService weatherService = WeatherService();

  @observable
  bool isLoading = false;

  @observable
  Weather? weather;

  @action
  Future<void> fetchWeather({LocationName? locationName}) async {
    changeLoadingStatus();
    try {
      final response =
          await weatherService.fetchWeather(locationName: locationName);
      weather = response;
    } catch (e) {
      //Error
    }
    changeLoadingStatus();
  }

  @action
  void changeLoadingStatus() {
    isLoading = !isLoading;
  }
}
