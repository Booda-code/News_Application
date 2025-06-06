import 'package:dio/dio.dart';

import '../models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String? category}) async{
    try {
      var response = await dio.get(
          'https://newsdata.io/api/1/news?apikey=pub_503160e42ce432d679d2a0a3bdd0d1867b355&country=eg&language=ar&category=$category');

      Map<String,dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['results'];
      List<ArticleModel> articlesList = [];

      for(var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
