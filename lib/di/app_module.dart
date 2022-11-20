import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class AppModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  Dio get dio => Dio(BaseOptions(
    baseUrl: 'https://mobytescbteamchallenge.herokuapp.com/',
    connectTimeout: 20 * 1000,
    receiveTimeout: 20 * 1000,
    headers: <String, String>{
      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbW9ieXRlc2NidGVhbWNoYWxsZW5nZS5oZXJva3VhcHAuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNjY4OTI5MDAwLCJleHAiOjE2Njg5MzI2MDAsIm5iZiI6MTY2ODkyOTAwMCwianRpIjoiQm5Ha3RwRG42VUNFVXRSaCIsInN1YiI6IjMiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.idhU8gHuVnRgQt6PuHPcslSq1Y40W7J6gQNu63GdOd4',
    },
  ));

  @singleton
  @Named("xchange")
  Dio get diox => Dio(BaseOptions(
    baseUrl: 'https://api.xchangeapi.com/',
    connectTimeout: 20 * 1000,
    receiveTimeout: 20 * 1000,
    headers: <String, String>{
      'api-key': 'R7JYpdpMiF8kFRR6HRpH3pC2qpsxVLvc',
    },
  ));
}