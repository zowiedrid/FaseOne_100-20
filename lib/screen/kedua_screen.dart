import 'package:flutter/material.dart';
import 'package:ucp1_pam/screen/ketiga_screen.dart';
import 'package:ucp1_pam/widget/kedua/footer2_widget.dart';
import 'package:ucp1_pam/widget/kedua/header2_widget.dart';
import 'package:ucp1_pam/widget/kedua/makanan_form.dart';

class KeduaScreen extends StatelessWidget {
  const KeduaScreen({super.key, required this.nama, required this.noHp});
  final String nama;
  final String noHp;

  @override
  Widget build(BuildContext context) {
    var makananFormKey = GlobalKey<FormState>();
    var makananController = TextEditingController();
    var minumanController = TextEditingController();
    var dessertController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Header2Widget(),
              Text("Halo Kak, $nama"),
              Text("Nomor HP: $noHp"),
              MakananForm(
                  makananFormKey: makananFormKey,
                  etNamaMakanan: makananController,
                  etNamaMinuman: minumanController,
                  etDessert: dessertController),
              Footer2Widget(onPressedSimpan: () { 
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KetigaScreen(
                            nama: nama,
                            noHp: noHp,
                            makanan: makananController.text, 
                            minuman: minumanController.text,
                            dessert: dessertController.text)),
                    (route) => false);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')));
              }, onPressedBatal: () {
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
