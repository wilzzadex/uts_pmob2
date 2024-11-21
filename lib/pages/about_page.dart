import 'package:flutter/material.dart';
import 'package:uts_pmob2/widgets/custom_widgets.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const PageHeader(title: "Tentang Kami"),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(16.0),
              ),
            ),
            child: const Center(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    // Logo restoran
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    SizedBox(height: 20),
                    // Nama restoran
                    Text(
                      "Restoran LezatKu",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    
                     SizedBox(height: 10),
                     Text(
                      "Restoran LezatKu berdiri sejak tahun 2024 dengan tujuan untuk menyajikan makanan "
                      "lezat dan berkualitas tinggi. Kami berkomitmen untuk memberikan pelayanan terbaik "
                      "dan pengalaman makan yang tak terlupakan kepada para pelanggan kami.",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.justify,
                    ),
                     SizedBox(height: 20),
                     Divider(),
                     SizedBox(height: 10),
                     Text(
                      "Lokasi Kami",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                     SizedBox(height: 10),
                     Text(
                      "Jl. Raya Kuliner No. 123, Kota Makan, Indonesia",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                     SizedBox(height: 20),
                     Divider(),
                     SizedBox(height: 10),
                     Text(
                      "Kontak",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                     SizedBox(height: 10),
                     Text(
                      "Telepon: +62 123 4567 890\nEmail: info@lezatku.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
