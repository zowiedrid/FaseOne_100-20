import 'package:flutter/material.dart';

class Footer1Widget extends StatelessWidget {
  const Footer1Widget(
      {super.key,
      required this.onPressedSimpan,
      required this.onPressedKeluar});

  final Function onPressedSimpan;
  final Function onPressedKeluar;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // evenly space the buttons
      children: [
        ElevatedButton(
          onPressed: onPressedSimpan as void Function()?,
          child: const Text("Simpan"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Keluar"),
        ),
      ],
    );
  }
}
