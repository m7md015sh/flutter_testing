import 'package:bloc/bloc.dart';
import 'package:flutter_testing/business_logic/post_cubit/post_state.dart';
import 'package:flutter_testing/data/repository/post_repository.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository _postRepository;
  PostCubit(this._postRepository) : super(PostInitialState());
  Future<void> getPosts() async {
    emit(PostLoadingState());
    try {
      final posts = await _postRepository.getPosts();
      emit(PostLoadedState(posts: posts));
    } catch (e) {
      emit(PostErrorState(message: e.toString()));
    }
  }
}
