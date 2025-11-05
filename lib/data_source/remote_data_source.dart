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
    final response = await networkService.getPosts(
      'https://jsonplaceholder.typicode.com/posts',
    );
    final result = response.data as List<dynamic>;
    final posts = result.map((post) => PostModel.fromJson(post)).toList();
    return posts;
  }
}
