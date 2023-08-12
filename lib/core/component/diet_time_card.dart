import 'package:flutter/material.dart';

class DietTimeCard extends StatelessWidget {
  final String duration;
  final String description;

  const DietTimeCard({
    required this.duration,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(12.0),
        title: Text(
          duration,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
