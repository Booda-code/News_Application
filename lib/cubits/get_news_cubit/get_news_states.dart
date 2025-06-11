import '../../models/article_model.dart';

class NewsStates{}

class NewsLoadingStates extends NewsStates{}

class NewsSuccessStates extends NewsStates{
  final List<ArticleModel> articles;
  NewsSuccessStates(this.articles);
}

class NewsFailureStates extends NewsStates{}