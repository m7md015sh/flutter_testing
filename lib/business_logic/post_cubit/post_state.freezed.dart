// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState()';
}


}

/// @nodoc
class $PostStateCopyWith<$Res>  {
$PostStateCopyWith(PostState _, $Res Function(PostState) __);
}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostInitialState value)?  initial,TResult Function( PostLoadingState value)?  loading,TResult Function( PostLoadedState value)?  loaded,TResult Function( PostErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostInitialState() when initial != null:
return initial(_that);case PostLoadingState() when loading != null:
return loading(_that);case PostLoadedState() when loaded != null:
return loaded(_that);case PostErrorState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostInitialState value)  initial,required TResult Function( PostLoadingState value)  loading,required TResult Function( PostLoadedState value)  loaded,required TResult Function( PostErrorState value)  error,}){
final _that = this;
switch (_that) {
case PostInitialState():
return initial(_that);case PostLoadingState():
return loading(_that);case PostLoadedState():
return loaded(_that);case PostErrorState():
return error(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostInitialState value)?  initial,TResult? Function( PostLoadingState value)?  loading,TResult? Function( PostLoadedState value)?  loaded,TResult? Function( PostErrorState value)?  error,}){
final _that = this;
switch (_that) {
case PostInitialState() when initial != null:
return initial(_that);case PostLoadingState() when loading != null:
return loading(_that);case PostLoadedState() when loaded != null:
return loaded(_that);case PostErrorState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<PostModel> posts)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostInitialState() when initial != null:
return initial();case PostLoadingState() when loading != null:
return loading();case PostLoadedState() when loaded != null:
return loaded(_that.posts);case PostErrorState() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<PostModel> posts)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case PostInitialState():
return initial();case PostLoadingState():
return loading();case PostLoadedState():
return loaded(_that.posts);case PostErrorState():
return error(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<PostModel> posts)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case PostInitialState() when initial != null:
return initial();case PostLoadingState() when loading != null:
return loading();case PostLoadedState() when loaded != null:
return loaded(_that.posts);case PostErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class PostInitialState implements PostState {
  const PostInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState.initial()';
}


}




/// @nodoc


class PostLoadingState implements PostState {
  const PostLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState.loading()';
}


}




/// @nodoc


class PostLoadedState implements PostState {
  const PostLoadedState({required final  List<PostModel> posts}): _posts = posts;
  

 final  List<PostModel> _posts;
 List<PostModel> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}


/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLoadedStateCopyWith<PostLoadedState> get copyWith => _$PostLoadedStateCopyWithImpl<PostLoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLoadedState&&const DeepCollectionEquality().equals(other._posts, _posts));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts));

@override
String toString() {
  return 'PostState.loaded(posts: $posts)';
}


}

/// @nodoc
abstract mixin class $PostLoadedStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostLoadedStateCopyWith(PostLoadedState value, $Res Function(PostLoadedState) _then) = _$PostLoadedStateCopyWithImpl;
@useResult
$Res call({
 List<PostModel> posts
});




}
/// @nodoc
class _$PostLoadedStateCopyWithImpl<$Res>
    implements $PostLoadedStateCopyWith<$Res> {
  _$PostLoadedStateCopyWithImpl(this._self, this._then);

  final PostLoadedState _self;
  final $Res Function(PostLoadedState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? posts = null,}) {
  return _then(PostLoadedState(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostModel>,
  ));
}


}

/// @nodoc


class PostErrorState implements PostState {
  const PostErrorState({required this.message});
  

 final  String message;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostErrorStateCopyWith<PostErrorState> get copyWith => _$PostErrorStateCopyWithImpl<PostErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $PostErrorStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostErrorStateCopyWith(PostErrorState value, $Res Function(PostErrorState) _then) = _$PostErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PostErrorStateCopyWithImpl<$Res>
    implements $PostErrorStateCopyWith<$Res> {
  _$PostErrorStateCopyWithImpl(this._self, this._then);

  final PostErrorState _self;
  final $Res Function(PostErrorState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PostErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
