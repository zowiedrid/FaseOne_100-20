import 'package:flutter/material.dart';
import 'package:ucp1_pam/screen/kedua_screen.dart';
import 'package:ucp1_pam/widget/pertama/data_form.dart';
import 'package:ucp1_pam/widget/pertama/footer1_widget.dart';
import 'package:ucp1_pam/widget/pertama/header1_widget.dart';

class PertamaScreen extends StatelessWidget {
  const PertamaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dataFormKey = GlobalKey<FormState>();
    var namaController = TextEditingController();
    var alamatController = TextEditingController();
    var noHpController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Header1Widget(),
              DataForm(
                dataFormKey: dataFormKey,
                etNama: namaController,
                etAlamat: alamatController,
                etNoHp: noHpController,
              ),
              Footer1Widget(onPressedSimpan: () {
                //jadikan onPressedSimpan sebagai penyimpan data dan beralih ke halaman KeduaScreen()
                if (dataFormKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KeduaScreen(
                              nama: namaController.text,
                              noHp: noHpController.text)),
                      (route) => false);

                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')));
                }
              }, onPressedKeluar: () {
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
