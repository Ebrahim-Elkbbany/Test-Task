import 'package:dio/dio.dart';

class ApiService {
  final String url = 'https://jsonplaceholder.typicode.com/users';

  Future<dynamic> get() async {
    var response = await Dio().get(
      url,
    );
    return response.data;
  }
}
