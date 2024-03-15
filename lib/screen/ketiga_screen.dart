import 'package:flutter/material.dart';
import 'package:ucp1_pam/screen/pertama_screen.dart';
import 'package:ucp1_pam/widget/ketiga/footer3_widget.dart';
import 'package:ucp1_pam/widget/ketiga/header3_widget.dart';

class KetigaScreen extends StatelessWidget {
  const KetigaScreen(
      {super.key,
      required this.nama,
      required this.noHp,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String noHp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          Header3Widget(),
          Form(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Add some padding
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), // Add border
                      ),
                      child: Text("Nama: $nama",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Add some padding
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), // Add border
                      ),
                      child: Text("Nomor HP: $noHp",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Add some padding
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), // Add border
                      ),
                      child: Text("Makanan: $makanan",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Add some padding
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), // Add border
                      ),
                      child: Text("Minuman: $minuman",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    Container(
                      padding: EdgeInsets.all(10), // Add some padding
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black), // Add border
                      ),
                      child: Text("Dessert: $dessert",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Footer3Widget(onPressedMulaiLagi: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => PertamaScreen()),
                (route) => false);

            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Mulai Lagi')));
          }, onPressedSelesai: () {
            Navigator.pop(context);
          })
        ],
      ),
    )));
  }
}
