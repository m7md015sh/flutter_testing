import 'package:flutter_testing/core/services/network_service.dart';
import 'package:flutter_testing/data/models/post_model.dart';

abstract class RemoteDataSource {
  Future<List<PostModel>> getPosts();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkService networkService;
  RemoteDataSourceImpl(this.networkService);

  @override
  Future<List<PostModel>> getPosts() async {
    final baseUrl = 'https://jsonplaceholder.typicode.com/posts';
    final response = await networkService.getPosts(baseUrl);
    if (response.statusCode != 200) {
      throw Exception('Failed to load posts');
    }
    final result = response.data as List<dynamic>;
    final posts = result.map((post) => PostModel.fromJson(post)).toList();
    return posts;
  }
}
