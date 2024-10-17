import 'package:dio/dio.dart';
import 'package:flutter_app_weather16032024/common/app_constant.dart';
import 'package:flutter_app_weather16032024/data/api/dio_manager.dart';

class WeatherRepository {
  final Dio _dio = DioClient.getDio();

  Future<Response<dynamic>> requestWeatherByCityName(String cityName) {
    return _dio.get("data/2.5/weather", queryParameters: {
      "appid": AppConstant.APP_ID_WEATHER_MAP_API,
      "units": "metric",
      "q": cityName
    });
  }
}