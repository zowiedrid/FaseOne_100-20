import 'package:flutter/material.dart';

class Footer2Widget extends StatelessWidget {
  const Footer2Widget({super.key, required this.onPressedSimpan, required this.onPressedBatal});

  final Function onPressedSimpan;
  final Function onPressedBatal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressedSimpan as void Function()?,
          child: const Text("Simpan"),
        ),
        ElevatedButton(
          onPressed: onPressedBatal as void Function()?,
          child: const Text("Batal"),
        ),
      ],
    );
  }
}
