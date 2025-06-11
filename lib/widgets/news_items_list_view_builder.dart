import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_paper/cubits/get_news_cubit/get_news_cubit.dart';
import 'package:news_paper/cubits/get_news_cubit/get_news_states.dart';
import '../models/article_model.dart';
import '../services/news_services.dart';
import 'news_item_list_view.dart';

class NewsItemListViewBuilder extends StatefulWidget {
  final String category;

  const NewsItemListViewBuilder({super.key, required this.category});

  @override
  State<NewsItemListViewBuilder> createState() =>
      _NewsItemListViewBuilderState();
}

class _NewsItemListViewBuilderState extends State<NewsItemListViewBuilder> {
  var future;

  void initState() {
    super.initState();
    var cubit = BlocProvider.of<GetNewsCubit>(context);
    cubit.getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetNewsCubit, NewsStates>(builder: (context, state) {
      if (state is NewsLoadingStates) {
        return const SliverToBoxAdapter(
            child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            CircularProgressIndicator(
              color: Colors.black,
            ),
          ],
        ));
      } else if (state is NewsSuccessStates) {
        return NewsItemListView(
          articles: state.articles,
        );
      } else {
        return const SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              Text(
                'Oops there was an error, try later',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
        );
      }
    });
  }
}
