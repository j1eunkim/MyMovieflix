import 'package:flutter/material.dart';
import 'package:mymovieflix/widgets/now_movie_widget.dart';

import 'package:mymovieflix/widgets/popular_movie_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.black,
        foregroundColor: const Color.fromARGB(255, 202, 13, 0),
        title: const Text(
          "MOVIEFLIX🎬",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          PopularMovie(),
          NowMovie(),
        ],
      ),
    );
  }
}
