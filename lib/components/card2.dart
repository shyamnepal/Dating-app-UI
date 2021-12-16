import 'package:flutter/material.dart';

class DiscoverCard2 extends StatelessWidget {
  final image;
  final name;
  final distance;

  DiscoverCard2({this.image, this.name, this.distance});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(image, height: 100, fit: BoxFit.fill),
      ),
    );
  }
}
