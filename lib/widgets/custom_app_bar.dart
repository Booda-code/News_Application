import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: 'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              )),
          TextSpan(
              text: 'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
                fontSize: 20,
              ))
        ]),
      ),
    );
  }
}
