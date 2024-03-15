import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DataForm extends StatefulWidget {
  DataForm(
      {super.key,
      required this.dataFormKey,
      required this.etNama,
      required this.etAlamat,
      required this.etNoHp});

  final GlobalKey<FormState> dataFormKey;
  final TextEditingController etNama;
  final TextEditingController etAlamat;
  final TextEditingController etNoHp;
  String? jenisKelamin;

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.dataFormKey,
      child: Column(
        children: [
          TextFormField(
            controller: widget.etNama,
            decoration: const InputDecoration(labelText: "Nama"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.etAlamat,
            decoration: const InputDecoration(labelText: "Alamat"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Alamat tidak boleh kosong";
              }
              return null;
            },
          ),
          TextFormField(
            controller: widget.etNoHp,
            decoration: const InputDecoration(labelText: "No HP"),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "No HP tidak boleh kosong";
              }
              return null;
            },
          ),
          Row(
            children: [
              Text("Jenis Kelamin"),
              Radio(
                  value: "Laki-laki",
                  groupValue: widget.jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      widget.jenisKelamin = value as String?;
                    });
                  }),
              const Text("Laki-laki"),
              Radio(
                  value: "Perempuan",
                  groupValue: widget.jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      widget.jenisKelamin = value as String?;
                    });
                  }),
              const Text("Perempuan"),
            ],
          ),
        ],
      ),
    );
  }
}
