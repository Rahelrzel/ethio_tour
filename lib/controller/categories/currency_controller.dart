import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'currency_controller.g.dart';

@riverpod
Future<double> rate(Ref ref,
    {required String have, required String want}) async {
  var currencyApi = Uri.https("currency-converter-by-api-ninjas.p.rapidapi.com",
      "/v1/convertcurrency", {"have": have, "want": want, "amount": "1"});
  var dio = Dio();
  var res = await dio.get(
    currencyApi.toString(),
    options: Options(
      headers: {
        'X-RapidAPI-Key': 'c57db91fb3mshb7e8d0052aef31dp1c1cbfjsnad125103fbe8',
        'X-RapidAPI-Host': 'currency-converter-by-api-ninjas.p.rapidapi.com'
      },
    ),
  );
  double r = res.data['new_amount'];
  return r;
}
