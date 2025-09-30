import 'package:flutter/material.dart';
// import 'game_data.dart';
import 'game_detail.dart';
import 'vehicle-data.dart';

class GameGridPage extends StatelessWidget {
  const GameGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Vehicle Grid")),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: vehicleList.length,
        itemBuilder: (context, index) {
          final vehicle = vehicleList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => GameDetailPage(vehicle: vehicle)));
            },
            child: Card(
              child: Column(
                children: [
                  Image.network(vehicle.imageUrls.first, height: 80, fit: BoxFit.cover),
                  Text(vehicle.name, textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
