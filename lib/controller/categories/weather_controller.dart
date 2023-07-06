import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_controller.g.dart';

String weatherHost = 'api.openweathermap.org';
String weatherApi = "data/2.5/weather";
String appid = "22e54ab45e2324d971afac83f3c911af";

@riverpod
Future<Map<String, dynamic>> currentWeather(Ref ref,
    {required double lat, required double lon}) async {
  var dio = Dio();
  var url = Uri.https(
    weatherHost,
    weatherApi,
    {'lat': '$lat', 'lon': '$lon', "appid": appid, 'units': 'metric'},
  );
  var res = await dio.get(url.toString());
  return res.data;
}
