import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_paper/views/home_view.dart';

void main(){
  runApp(const NewsPaper());
}

class NewsPaper extends StatelessWidget {
  const NewsPaper({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
