import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/core/services/network_service.dart';
import 'package:flutter_testing/data/models/post_model.dart';
import 'package:flutter_testing/data_source/remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'remote_data_source_test.mocks.dart';

@GenerateMocks([NetworkService])
void main() {
  late NetworkService mockNetworkService;
  late RemoteDataSource remoteDataSource;

  setUp(() {
    mockNetworkService = MockNetworkService();
    remoteDataSource = RemoteDataSourceImpl(mockNetworkService);
  });

  test('getPosts should return list of posts without any exception', () async {
    //arrange
    final posts = List.generate(5, (index) {
      return PostModel(
        userId: index,
        id: index,
        title: 'title $index',
        body: 'body $index',
      );
    });

    //act
    final postsMap = posts.map((post) => post.toJson()).toList();
    when(
      mockNetworkService.getPosts('https://jsonplaceholder.typicode.com/posts'),
    ).thenAnswer(
      (_) => Future.value(
        Response(
          requestOptions: RequestOptions(
            path: 'https://jsonplaceholder.typicode.com/posts',
          ),
          data: postsMap,
        ),
      ),
    );
    final result = await remoteDataSource.getPosts();

    //assert
    expect(result, posts);
  });
}
