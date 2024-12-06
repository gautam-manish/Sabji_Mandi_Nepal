import 'package:flutter/material.dart';

class FreshVegetableCard extends StatelessWidget {
  const FreshVegetableCard({super.key, required this.imageUrl, required this.title, required this.price, required this.unit});
  final String imageUrl;
  final String title;
  final String price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
              imageUrl,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Rs.$price/$unit",
              style: TextStyle(
                fontSize: 12,
                color: Colors.teal.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}