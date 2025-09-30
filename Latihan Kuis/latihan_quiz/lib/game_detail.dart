import 'package:flutter/material.dart';
// import 'game_data.dart';
import 'vehicle-data.dart';

class GameDetailPage extends StatelessWidget {
  final Vehicle vehicle;
  const GameDetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(vehicle.imageUrls.first),
            const SizedBox(height: 10),
            Text(vehicle.description),
            const SizedBox(height: 10),
            Text("Name: ${vehicle.name}"),
            Text("Type: ${vehicle.type}"),
            Text("Engine: ${vehicle.engine}"),
            Text("Fuel Type: ${vehicle.fuelType}"),
            Text("Price: ${vehicle.price}"),
            // Wrap(
            //   spacing: 5,
            //   children: vehicle.tags.map((t) => Chip(label: Text(t))).toList(),
            // ),
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
