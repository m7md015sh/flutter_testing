import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_testing/business_logic/post_cubit/post_cubit.dart';
import 'package:flutter_testing/business_logic/post_cubit/post_state.dart';
import 'package:flutter_testing/core/services/network_service.dart';
import 'package:flutter_testing/data/repository/post_repository.dart';
import 'package:flutter_testing/data_source/remote_data_source.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(
        PostRepositoryImpl(RemoteDataSourceImpl(NetworkServiceImpl())),
      )..getPosts(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Posts')),
        body: SafeArea(
          child: BlocBuilder<PostCubit, PostState>(
            builder: (context, state) {
              if (state is PostLoadingState) {
                return Center(child: CircularProgressIndicator());
              } else if (state is PostLoadedState) {
                return ListView.builder(
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Text(state.posts[index].id.toString()),
                      trailing: Text(state.posts[index].userId.toString()),
                      title: Text(state.posts[index].title),
                      subtitle: Text(state.posts[index].body),
                    );
                  },
                );
              } else if (state is PostErrorState) {
                return SizedBox(child: Center(child: Text(state.message)));
              } else {
                return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
