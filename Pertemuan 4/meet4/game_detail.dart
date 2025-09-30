import 'package:flutter/material.dart';
import 'game_data.dart';

class GameDetailPage extends StatelessWidget {
  final GameStore game;
  const GameDetailPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(game.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(game.imageUrls.first),
            const SizedBox(height: 10),
            Text(game.about),
            const SizedBox(height: 10),
            Text("Release: ${game.releaseDate}"),
            Text("Price: ${game.price}"),
            Text("Review: ${game.reviewAverage} (${game.reviewCount})"),
            Wrap(
              spacing: 5,
              children: game.tags.map((t) => Chip(label: Text(t))).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
