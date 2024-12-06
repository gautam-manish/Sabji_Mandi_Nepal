import 'package:flutter/material.dart';
import 'package:sabji_mandi_nepal/widgets/dashboard_food_cart.dart';


class LookingForWidgetPage extends StatelessWidget {
  LookingForWidgetPage({super.key});
  var dataArray = [
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1671395501275-630ae5ea02c4?q=80&w=1577&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Tomato",
    },
    {
      "url":
          "https://images.unsplash.com/photo-1596910547037-846b1980329f?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Potato",
    },
    {
      "url":
          "https://images.unsplash.com/photo-1613743983303-b3e89f8a2b80?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Cauliflower",
    },
    {
      "url":
          "https://plus.unsplash.com/premium_photo-1724849305142-498abc1f7b89?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "title": "Carrot",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "What are you looking for?",
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (ctx, index) {
            final data = dataArray[index];
            return DashboardFoodCard(
              imageUrl: data['url'] ?? "",
              title: data['title'] ?? "N/A",
            );
          },
          itemCount: dataArray.length,
        ),
      ],
    );
  }
}