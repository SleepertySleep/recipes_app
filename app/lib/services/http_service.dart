import 'package:app/consts.dart';
import 'package:dio/dio.dart';

class HTTPService {

  static final HTTPService _singleton = HTTPService._internal();

  final _dio = Dio();

  factory HTTPService() {
    return _singleton;
  }

  HTTPService._internal();

  Future<void> setup(String? bearerToken) async {
    final headers = {
      'Context-Type': 'application/json',
    };
    final options = BaseOptions(
      baseUrl: API_BASE_URL,
      headers: headers,
      validateStatus: (status) {
        if (status == null) return false;
        return status < 500;
      }
    );
    _dio.options = options;
  }

  Future<Response?> post(String path, Map data) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
      );
      return response;
    } catch (e) {
      print(e);
    }
  }
}