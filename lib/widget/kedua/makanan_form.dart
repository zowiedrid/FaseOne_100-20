import 'package:flutter/material.dart';

class MakananForm extends StatefulWidget {
  const MakananForm(
      {super.key,
      required this.makananFormKey,
      required this.etNamaMakanan,
      required this.etNamaMinuman,
      required this.etDessert});
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: widget.makananFormKey,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                controller: widget.etNamaMakanan,
                decoration: const InputDecoration(
                  labelText: "Nama Makanan",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama Makanan tidak boleh kosong";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                controller: widget.etNamaMinuman,
                decoration: const InputDecoration(
                  labelText: "Nama Minuman",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama Minuman tidak boleh kosong";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                controller: widget.etDessert,
                decoration: const InputDecoration(
                  labelText: "Dessert",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Dessert tidak boleh kosong";
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
