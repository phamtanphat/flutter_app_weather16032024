import 'package:flutter_app_weather16032024/common/base_bloc.dart';
import 'package:flutter_app_weather16032024/common/base_event.dart';
import 'package:flutter_app_weather16032024/data/repository/weather_repository.dart';
import 'package:flutter_app_weather16032024/presentation/bloc/search_weather/search_weather_event.dart';

class SearchWeatherBloc extends BaseBloc {
  final WeatherRepository _repository = WeatherRepository();

  @override
  void dispatch(BaseEvent event) {
    switch (event.runtimeType) {
      case SearchWeatherEvent _:
        searchWeatherByCityName(event as SearchWeatherEvent);
        break;
    }
  }

  void searchWeatherByCityName(SearchWeatherEvent event) {
    _repository
        .requestWeatherByCityName(event.cityName)
        .then((value) => null)
        .catchError((error) => print(error));
  }
}
