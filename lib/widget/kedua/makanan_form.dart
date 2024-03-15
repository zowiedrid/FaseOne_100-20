import 'package:flutter/material.dart';

class MakananForm extends StatefulWidget {
  const MakananForm({super.key, required this.makananFormKey, required this.etNamaMakanan, required this.etNamaMinuman, required this.etDessert});
  final GlobalKey<FormState> makananFormKey;
  final TextEditingController etNamaMakanan;
  final TextEditingController etNamaMinuman;
  final TextEditingController etDessert;

  @override
  State<MakananForm> createState() => _MakananFormState();
}

class _MakananFormState extends State<MakananForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.makananFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNamaMakanan,
            decoration: const InputDecoration(labelText: "Nama Makanan"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nama Makanan tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.etNamaMinuman,
            decoration: const InputDecoration(labelText: "Nama Minuman"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nama Minuman tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.etDessert,
            decoration: const InputDecoration(labelText: "Dessert"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Dessert tidak boleh kosong";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
