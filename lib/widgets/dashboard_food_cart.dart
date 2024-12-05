import 'package:flutter/material.dart';

class DashboardFoodCard extends StatelessWidget {
  const DashboardFoodCard({super.key,required this.imageUrl, required this.title});
  final String imageUrl;
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Column(
          children: [
            SizedBox(
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
                fit:  BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
}