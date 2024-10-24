import 'package:flutter/material.dart';
import 'package:flutter_app_weather16032024/presentation/bloc/search_weather/search_weather_bloc.dart';
import 'package:flutter_app_weather16032024/presentation/bloc/search_weather/search_weather_event.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => SearchWeatherBloc(),
      child: HomePageWidget(),
    );
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageStateWidget();
}

class _HomePageStateWidget extends State<HomePageWidget> {

  SearchWeatherBloc? _bloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bloc = Provider.of(context);
    _bloc?.searchWeatherByCityName(SearchWeatherEvent(cityName: "Hanoi"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
