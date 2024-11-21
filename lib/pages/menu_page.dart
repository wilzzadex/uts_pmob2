import 'package:flutter/material.dart';
import '../widgets/custom_widgets.dart';

class MenuPage extends StatelessWidget {
  MenuPage({super.key});

  final List<Map<String, String>> _menuItems = [
    {"name": "Pizza", "price": "50.000", "image": "assets/images/pizza.png"},
    {"name": "Burger", "price": "30.000", "image": "assets/images/burger.png"},
    {"name": "Pasta", "price": "40.000", "image": "assets/images/pasta.png"},
    {"name": "Steak", "price": "100.000", "image": "assets/images/steak.png"},
    // Tambahkan lebih banyak item sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const PageHeader(title: "Daftar Menu"),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: _menuItems.length,
              itemBuilder: (ctx, i) => MenuCard(
                name: _menuItems[i]['name']!,
                price: _menuItems[i]['price']!,
                imagePath: _menuItems[i]['image']!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
