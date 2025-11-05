import 'package:dio/dio.dart';

abstract class NetworkService {
  Future<Response> getPosts(String url);
}

class NetworkServiceImpl implements NetworkService {
  final dio = Dio();

  @override
  Future<Response> getPosts(String url) async {
    final response = await dio.get(url);
    return response;
  }
}
