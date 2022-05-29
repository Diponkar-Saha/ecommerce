
import 'package:dio/dio.dart';

class ApiClient{
  final Dio _dio = Dio();
  Future<dynamic> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://www.shebanin.com/api/v1/login'
        ,
        data: {
          'username': email,
          'password': password,
        },

      );
      return response.data;
    } on DioError catch (e) {
      return e.response!.data;
    }
  }

}
