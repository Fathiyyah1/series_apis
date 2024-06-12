import 'package:dio/dio.dart';
import 'package:series_apis/constants/strings.dart';

class CharactersWebServices {
  late Dio dio; //late means it's not null and i'll give it a value later on
  CharactersWebServices() {
    BaseOptions options = new BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, //means 60 seconds
      receiveTimeout: 60 * 1000,
    );

    dio = Dio(options);
  }
}
