import 'package:flutter/material.dart';
import 'package:sabji_mandi_nepal/modules/dashboard/lookingForWidget/looking_for_widget_page.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.shopping_cart,
        ),
        title: const Text(
          "Sabji Mandi Nepal",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: LookingForWidgetPage(),
    );
  }
}
