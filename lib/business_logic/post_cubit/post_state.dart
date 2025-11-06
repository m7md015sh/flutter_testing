import 'package:flutter_testing/data/models/post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'post_state.freezed.dart';

@freezed
sealed class PostState with _$PostState {
  const factory PostState.initial() = PostInitialState;
  const factory PostState.loading() = PostLoadingState;
  const factory PostState.loaded({required List<PostModel> posts}) =
      PostLoadedState;
  const factory PostState.error({required String message}) = PostErrorState;
}
