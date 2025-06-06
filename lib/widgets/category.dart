import 'package:flutter/material.dart';
import 'package:news_paper/views/category_view.dart';

class Category extends StatelessWidget {
  const Category({
    super.key, required this.image, required this.text,
  });
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(category: text,);
        },),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          height: 100,
          width: 200,
           child: Center(
              child: Text(
            text,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
