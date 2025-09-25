import 'package:flutter/material.dart';
import 'game.dart';
import 'game_detail.dart';
class GameGridPage extends StatelessWidget {
  const GameGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Game Grid')),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: gameList.length,
        itemBuilder: (context, index) {
          final daftar = gameList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GameDetailPage(daftar: daftar);
              }));
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(
                    daftar.imageUrls.first,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Text(daftar.name, textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
                  Text(daftar.price),
                ]
              ),
            ),
          );
        },
      ),
    );
  }
}