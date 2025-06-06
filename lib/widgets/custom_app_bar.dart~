import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News ',
                style: TextStyle(
                  color: Colors.black, // Color for "News"
                  fontWeight: FontWeight.bold, // Optional: Make the text bold
                  fontSize: 20, // Optional: Adjust the font size
                ),
              ),
              TextSpan(
                text: 'Paper',
                style: TextStyle(
                  color: Colors.yellow, // Color for "Paper"
                  fontWeight: FontWeight.bold, // Optional: Make the text bold
                  fontSize: 20, // Optional: Adjust the font size
                ),
              ),
            ],
          ),
        ),
      ),
      centerTitle: true, // Centers the title within the AppBar
    );
  }
}
