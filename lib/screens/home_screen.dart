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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Popular Movies',
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
