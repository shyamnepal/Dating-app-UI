import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  final image;
  final name;
  final distance;

  DiscoverCard({this.image, this.name, this.distance});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            width: 170,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(image, height: 140, fit: BoxFit.fill),
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Icon(Icons.location_pin, color: Colors.red, size: 20),
                Text(distance),
              ],
            ),
          )
        ],
      ),
    );
  }
}
