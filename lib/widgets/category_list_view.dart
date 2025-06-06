import 'package:flutter/cupertino.dart';
import 'package:news_paper/generated/assets.dart';

import 'category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
final List<Category> categories = const
[
  Category(
    image: Assets.assetsBusiness,
    text: 'Business',
  ),
  Category(
    image: Assets.assetsEntertement,
    text: 'Entertainment',
  ),
  Category(
    image: Assets.assetsHealth,
    text: 'Health',
  ),
  Category(
    image: Assets.assetsScience,
    text: 'Science',
  ),
  Category(
    image: Assets.assetsSports,
    text: 'Sports',
  ),
  Category(
    image: Assets.assetsTecnology,
    text: 'Technology',
  ),
  Category(
    image: Assets.assetsWorld,
    text: 'World',
  ),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
      itemCount:categories.length ,
          itemBuilder: (context, index) {
        return categories[index];
      }),
    );
  }
}