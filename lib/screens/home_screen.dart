import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "MyMovieFlix",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Hero(
              tag: id,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Popular Movies',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Hero(
              tag: id,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('poster 들어갈 자리'),
              ),
            ),
            Hero(
              tag: id,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Showing in Cinemas',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('poster 들어갈 자리'),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'To be continued..',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('poster 들어갈 자리'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
