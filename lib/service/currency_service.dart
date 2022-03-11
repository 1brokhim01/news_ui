import 'package:dio/dio.dart';

import '../models/currency_model.dart';

class CurrencyInfo {
  static Future<List<Currency>> getData() async {
    Response res = await Dio().get("https://nbu.uz/uz/exchange-rates/json/");
    return (res.data as List).map((e) => Currency.fromJson(e)).toList();
  }
}
