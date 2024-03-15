import 'package:flutter/material.dart';

class Footer3Widget extends StatelessWidget {
  const Footer3Widget({super.key, required this.onPressedMulaiLagi, required this.onPressedSelesai});

  final Function onPressedMulaiLagi;
  final Function onPressedSelesai;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressedMulaiLagi as void Function()?,
          child: const Text("Mulai Lagi"),
        ),
        ElevatedButton(
          onPressed: onPressedSelesai as void Function()?,
          child: const Text("Selesai"),
        ),
      ],
    );
  }
}
