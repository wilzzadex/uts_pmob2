import 'package:flutter/material.dart';
import 'menu_page.dart';
import 'reservasi_page.dart';
import 'about_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    MenuPage(),
    const ReservasiPage(),
    const AboutPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        centerTitle: true,
        leading: const Padding(
          padding:  EdgeInsets.only(left: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/logo.png'), // Logo restoran
            backgroundColor: Colors.white,
          ),
        ),
        title: const Text(
          'LezatKu',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () {
                // Tambahkan logika jika foto diklik, misal: buka profil user
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text('Profil Pengguna'),
                    content: const Text('Fitur profil belum tersedia.'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(ctx).pop(),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: const AssetImage('assets/images/user_photo.png'), // Foto pengguna
                backgroundColor: Colors.grey[200],
              ),
            ),
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu,color: Colors.orange,),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event,color: Colors.orange,),
            label: 'Reservasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,color: Colors.orange,),
            label: 'Tentang Kami',
          ),
        ],
      ),
    );
  }
}
