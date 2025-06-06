import 'package:flutter/material.dart';
import 'package:news_paper/models/article_model.dart';
import 'package:news_paper/views/web_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebView(link: articleModel.link,),));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              articleModel.image??'https://salonlfc.com/wp-content/uploads/2018/01/image-not-found-scaled-1150x647.png',
              width: double.infinity,
              height: 250,
              fit: BoxFit.fill,
            ),
          ),
            Text(
            articleModel.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
            Text(
              articleModel.subTitle?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
