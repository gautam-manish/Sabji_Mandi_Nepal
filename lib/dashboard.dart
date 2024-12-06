import 'package:flutter/material.dart';
import 'package:sabji_mandi_nepal/modules/dashboard/freshVegetable/fresh_vegetable.dart';
import 'package:sabji_mandi_nepal/modules/dashboard/lookingForWidget/looking_for_widget_page.dart';
import 'package:sabji_mandi_nepal/modules/dashboard/promos/promos_card.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 245, 241),
      appBar: AppBar(
        leading: Icon(
          Icons.shopping_bag,
        ),
        title: const Text(
          "Sabji Mandi Nepal",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LookingForWidgetPage(),
            const SizedBox(
              height: 10,
            ),
            PromosCard(),
            const SizedBox(height: 10),
            const Text(
              "Fresh Vegetable",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 10),
            FreshVegetable(),
          ],
        ),
      ),
    );
  }
}