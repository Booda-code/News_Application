import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Row(
            children: [
              Text(
                'News ',
                style: TextStyle(
                  color: Colors.black, // Color for "News"
                  fontWeight: FontWeight.bold, // Optional: Make the text bold
                  fontSize: 20, // Optional: Adjust the font size
                ),
              ),
              Text(
                'Paper',
                style: TextStyle(
                  color: Colors.yellow, // Color for "Paper"
                  fontWeight: FontWeight.bold, // Optional: Make the text bold
                  fontSize: 20, // Optional: Adjust the font size
                ),
              ),
            ],
        ),
      ),
      centerTitle: true, // Centers the title within the AppBar
    );
  }
}
