import 'package:flutter_app_weather16032024/common/base_bloc.dart';
import 'package:flutter_app_weather16032024/common/base_event.dart';
import 'package:flutter_app_weather16032024/data/api/dto/search_weather_dto.dart';
import 'package:flutter_app_weather16032024/data/model/search_weather.dart';
import 'package:flutter_app_weather16032024/data/repository/weather_repository.dart';
import 'package:flutter_app_weather16032024/presentation/bloc/search_weather/search_weather_event.dart';
import 'package:flutter_app_weather16032024/utility/ConverterUtil.dart';

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
        .then((response) {
          if (response.statusCode == 200) {
            SearchWeatherDto searchWeatherDto = SearchWeatherDto.fromJson(response.data);
            SearchWeather searchWeather = ConverterUtil.convertSearchWeather(searchWeatherDto);
            print(searchWeather.toString());
          }
        })
        .catchError((error) => print(error));
  }
}
