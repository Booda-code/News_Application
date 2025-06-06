import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/news_items_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [

            NewsItemListViewBuilder(category: category,),
          ],
        ),
      ),
    );
  }
}
