import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_paper/views/home_view.dart';

import 'cubits/get_news_cubit/get_news_cubit.dart';

void main(){
  runApp(const NewsPaper());
}

class NewsPaper extends StatelessWidget {
  const NewsPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetNewsCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
