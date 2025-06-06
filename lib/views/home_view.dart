import 'package:flutter/material.dart';
import '../widgets/category_list_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/news_items_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 10,
            ),),
             NewsItemListViewBuilder(category: 'top',),
          ],
        ),
      ),
    );
  }
}

// Create States
// Create Cubit
// Create Function
// Provide Cubit
// Integrate Cubit
// Trigger Cubit