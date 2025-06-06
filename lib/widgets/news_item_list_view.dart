import 'package:flutter/material.dart';
import 'package:news_paper/widgets/news_item.dart';

import '../models/article_model.dart';

class NewsItemListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsItemListView({super.key,required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
            (context, index) {
          return  Padding(
            padding: const EdgeInsets.only(top: 20),
            child: NewsItem(
              articleModel: articles[index],),
          );
        },
      ),
    );
  }
}
