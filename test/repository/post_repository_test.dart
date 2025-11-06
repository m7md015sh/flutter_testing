import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/data/models/post_model.dart';
import 'package:flutter_testing/data/repository/post_repository.dart';
import 'package:flutter_testing/data_source/remote_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'post_repository_test.mocks.dart';

@GenerateMocks([RemoteDataSource])
void main() {
  late RemoteDataSource mockRemoteDataSource;
  late PostRepository postRepository;
  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    postRepository = PostRepositoryImpl(mockRemoteDataSource);
  });

  test(
    'getPosts should be return list of posts without any exception',
    () async {
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
      when(
        mockRemoteDataSource.getPosts(),
      ).thenAnswer((_) => Future.value(posts));
      final result = await postRepository.getPosts();

      //assert
      expect(result, posts);
    },
  );
}
