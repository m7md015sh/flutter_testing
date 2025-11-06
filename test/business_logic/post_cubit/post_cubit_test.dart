import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/business_logic/post_cubit/post_cubit.dart';
import 'package:flutter_testing/business_logic/post_cubit/post_state.dart';
import 'package:flutter_testing/data/models/post_model.dart';
import 'package:flutter_testing/data/repository/post_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'post_cubit_test.mocks.dart';

@GenerateMocks([PostRepository])
void main() {
  late PostCubit postCubit;
  late PostRepository mockPostRepository;
  setUp(() {
    mockPostRepository = MockPostRepository();
    postCubit = PostCubit(mockPostRepository);
  });

  test('getPosts should be emit loading then loaded with posts list', () async {
    //arrange
    final posts = List.generate(5, (index) {
      return PostModel(
        userId: index,
        id: index,
        title: 'title $index',
        body: 'body $index',
      );
    });
    when(mockPostRepository.getPosts()).thenAnswer((_) => Future.value(posts));

    //assert
    final expectedState = [PostLoadingState(), PostLoadedState(posts: posts)];
    expectLater(postCubit.stream, emitsInAnyOrder(expectedState));

    //act
    await postCubit.getPosts();
  });
}
