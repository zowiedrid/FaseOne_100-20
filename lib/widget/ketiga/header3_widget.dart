import 'package:flutter/material.dart';

class Header3Widget extends StatelessWidget {
  const Header3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Detail Form Data Diri & Makanan",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                "https://static.wixstatic.com/media/687711_6899c5753d494b158c284c3465a11565~mv2.png/v1/fill/w_70,h_70,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/Logo%202023.png")),
        Text("Roti Gembong Gedhe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
