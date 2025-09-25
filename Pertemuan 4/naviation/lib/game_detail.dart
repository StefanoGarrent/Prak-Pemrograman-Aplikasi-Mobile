import 'package:flutter/material.dart';
import 'package:naviation/game.dart';

class GameDetailPage extends StatelessWidget {
  final GameStore daftar;
  const GameDetailPage({super.key, required this.daftar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(daftar.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: NetworkImage(daftar.imageUrls[0])),
            const SizedBox(height: 16.0),
            Text(daftar.about),
            const SizedBox(height: 16.0),
            Text('Release: ${daftar.releaseDate}', style: const TextStyle(fontWeight: FontWeight.bold)),
            Text('Price: ${daftar.price}', style: const TextStyle(fontWeight: FontWeight.bold)),
            Text('Review: ${daftar.reviewCount}', style: const TextStyle(fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 5.0,
              children: daftar.tags.map((t) => Chip(label: Text(t))).toList(),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            )
            ],
          ),
        ),
      );
    }
  }