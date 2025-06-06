import 'package:flutter/cupertino.dart';

import 'category.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
final List<Category> categories = const
[
  Category(
    image: 'assets/Business.jpg',
    text: 'Business',
  ),
  Category(
    image: 'assets/Entertement.jpeg',
    text: 'Entertainment',
  ),
  Category(
    image: 'assets/Health.jpeg',
    text: 'Health',
  ),
  Category(
    image: 'assets/Science.jpeg',
    text: 'Science',
  ),
  Category(
    image: 'assets/Sports.jpeg',
    text: 'Sports',
  ),
  Category(
    image: 'assets/Tecnology.jpeg',
    text: 'Technology',
  ),
  Category(
    image: 'assets/world.jpeg',
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