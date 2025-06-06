class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String link;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.link,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['image_url'],
        title: json['title'],
        subTitle: json['description'],
        link: json['link']);
  }
}
