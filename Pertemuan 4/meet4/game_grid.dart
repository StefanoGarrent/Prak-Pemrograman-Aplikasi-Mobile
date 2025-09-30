import 'package:flutter/material.dart';
import 'game_data.dart';
import 'game_detail.dart';

class GameGridPage extends StatelessWidget {
  const GameGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Game Grid")),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: gameList.length,
        itemBuilder: (context, index) {
          final game = gameList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => GameDetailPage(game: game)));
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(game.imageUrls.first, height: 80, fit: BoxFit.cover),
                  Text(game.name, textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
