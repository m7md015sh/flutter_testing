import 'package:dio/dio.dart';
import 'package:flutter_testing/data/models/post_model.dart';

abstract class NetworkService {
  Future<List<PostModel>> getPosts(String url);
}

class NetworkServiceImpl implements NetworkService {
  final dio = Dio();

  @override
  Future<List<PostModel>> getPosts(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
