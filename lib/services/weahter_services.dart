import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:we1_app/models/api.dart';

class WeatherService{
  Future<Weather> getWeatherData() async {
    final uri = Uri.parse('https://api.weatherapi.com/v1/forecast.json?key=6bef3fa0dea84a3fa52200312220409 &q=$city&days=5&aqi=no&alerts=no');

    final response = await http.get(uri);
    if(response.statusCode == 200){
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed');
    }
  }
}
String city = 'Cairo';

