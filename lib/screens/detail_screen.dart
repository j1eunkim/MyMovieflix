import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatelessWidget {
  final String title, id, poster, overview;
  final double vote;

  const DetailScreen({
    super.key,
    required this.title,
    required this.id,
    required this.poster,
    required this.overview,
    required this.vote,
  });

  @override
  Widget build(BuildContext context) {
    final posterUrl = 'https://image.tmdb.org/t/p/w500$poster';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: id,
              child: Center(
                child: Container(
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.network(posterUrl),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Genre",
                style: TextStyle(color: Colors.white.withOpacity(0.7))),
            const SizedBox(
              height: 10,
            ),
            RatingBarIndicator(
              rating: vote,
              itemCount: vote ~/ 2,
              direction: Axis.horizontal,
              itemSize: 20,
              itemBuilder: (context, index) => const Icon(
                Icons.star_rounded,
                color: Colors.amber,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.8))),
              child: Text(
                overview,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
