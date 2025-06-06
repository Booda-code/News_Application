import '../../models/article_model.dart';

class NewsStates{}

class InitialStates extends NewsStates{}
class NewsLoadedStates extends NewsStates{
  final List<ArticleModel> articles;

  NewsLoadedStates(this.articles);
}
class NewsFailureStates extends NewsStates{}