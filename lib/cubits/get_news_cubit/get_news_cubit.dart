import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../models/article_model.dart';
import '../../services/news_services.dart';
import 'get_news_states.dart';

class GetNewsCubit extends Cubit<NewsStates>{
  GetNewsCubit() : super(NewsLoadingStates());

  List<ArticleModel> articles = [];

    getNews({required String? category}) async {
      emit(NewsLoadingStates());
    try {
      articles = await NewsServices(Dio()).getNews(category:category);
    emit(NewsSuccessStates(articles));
    } catch (e) {
      emit(NewsFailureStates());
    }
  }
}