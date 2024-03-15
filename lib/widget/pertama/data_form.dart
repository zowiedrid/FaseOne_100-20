import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: widget.dataFormKey,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                controller: widget.etNama,
                decoration: const InputDecoration(
                  labelText: "Nama",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama tidak boleh kosong";
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
                controller: widget.etAlamat,
                decoration: const InputDecoration(
                  labelText: "Alamat",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Alamat tidak boleh kosong";
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
                controller: widget.etNoHp,
                decoration: const InputDecoration(
                  labelText: "No HP",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10.0),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "No HP tidak boleh kosong";
                  } else if (value.length < 10 || value.length > 14) {
                    return "No HP harus antara 10 dan 14 angka";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10.0),
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
      ),
    );
  }
}
