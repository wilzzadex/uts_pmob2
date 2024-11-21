import 'package:flutter/material.dart';
import '../widgets/custom_widgets.dart';

class ReservasiPage extends StatefulWidget {
  const ReservasiPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ReservasiPageState createState() => _ReservasiPageState();
}

class _ReservasiPageState extends State<ReservasiPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _guestsController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  void _submitReservation() {
    if (_formKey.currentState!.validate()) {
      // Simulasi sukses
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text("Reservasi Berhasil"),
          content: Text(
              "Nama: ${_nameController.text}\nJumlah Tamu: ${_guestsController.text}\nTanggal: ${_dateController.text}"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
                _formKey.currentState!.reset();
              },
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const PageHeader(title: "Reservasi Tempat"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomFormField(
                    controller: _nameController,
                    label: "Nama Lengkap",
                    hintText: "Masukkan nama Anda",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Nama tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
                  CustomFormField(
                    controller: _guestsController,
                    label: "Jumlah Tamu",
                    hintText: "Masukkan jumlah tamu",
                    inputType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Jumlah tamu tidak boleh kosong";
                      }
                      if (int.tryParse(value) == null) {
                        return "Harap masukkan angka yang valid";
                      }
                      return null;
                    },
                  ),
                  CustomFormField(
                    controller: _dateController,
                    label: "Tanggal",
                    hintText: "yyyy-mm-dd",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Tanggal tidak boleh kosong";
                      }
                      if (!RegExp(r"\d{4}-\d{2}-\d{2}").hasMatch(value)) {
                        return "Format tanggal salah";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitReservation,
                    child: const Text("Kirim Reservasi"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
