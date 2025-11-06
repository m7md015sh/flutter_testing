import 'package:flutter_testing/data/models/post_model.dart';
import 'package:flutter_testing/data_source/remote_data_source.dart';

abstract class PostRepository {
  Future<List<PostModel>> getPosts();
}

class PostRepositoryImpl implements PostRepository {
  final RemoteDataSource _remoteDataSource;

  PostRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<PostModel>> getPosts() async {
    return _remoteDataSource.getPosts();
  }
}
