import 'package:flutter/material.dart';
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
      child: Column(
        children: [
          Header3Widget(),
          Text("Halo Kak, $nama"),
          Text("Nomor HP: $noHp"),
          Text("Makanan: $makanan"),
          Text("Minuman: $minuman"),
          Text("Dessert: $dessert"),
          Footer3Widget(onPressedMulaiLagi: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Mulai Lagi')));
          }, onPressedSelesai: () {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Selesai')));
          })
        ],
      ),
    ));
  }
}
