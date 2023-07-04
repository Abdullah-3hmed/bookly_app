import 'package:dio/dio.dart';

class DioHelper {
  static late Dio _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://www.googleapis.com/books/v1/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response<Map<String, dynamic>>> getData({
    required String endPoint,
    Map<String, dynamic>? query,
  }) async {
    return await _dio.get(
      endPoint,
      queryParameters: query,
    );
  }
}
