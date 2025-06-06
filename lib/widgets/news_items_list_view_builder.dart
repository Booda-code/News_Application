import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_services.dart';
import 'news_item_list_view.dart';


class NewsItemListViewBuilder extends StatefulWidget {
final String category;

  const NewsItemListViewBuilder({super.key, required this.category});
  @override
  State<NewsItemListViewBuilder> createState() => _NewsItemListViewBuilderState();
}

class _NewsItemListViewBuilderState extends State<NewsItemListViewBuilder> {

  var future;
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(future:future ,
        builder: (context , snapshot){

      if (snapshot.hasData) {
        return NewsItemListView(
          articles: snapshot.data! ,
        );
      } else if(snapshot.hasError)
      {
        return const SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 300,),
              Text('oops there was an error, try later', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),],),
        );
      } else
      {
        return const SliverToBoxAdapter(
            child: Column(
              children: [SizedBox(height: 300,), CircularProgressIndicator(color: Colors.black,),],));
      }
    });
  }
}
