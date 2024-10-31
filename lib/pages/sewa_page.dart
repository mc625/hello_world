import 'package:flutter/material.dart';

class SewaPage extends StatelessWidget {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController paketController = TextEditingController();
  final TextEditingController biayaController = TextEditingController();

  SewaPage({super.key});

  void _submitSewa(BuildContext context) {
    // Logika untuk menyimpan data sewa
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Sewa berhasil ditambahkan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+ Sewa'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(labelText: 'Alamat'),
            ),
            TextField(
              controller: paketController,
              decoration: const InputDecoration(labelText: 'Paket'),
            ),
            TextField(
              controller: biayaController,
              decoration: const InputDecoration(labelText: 'Biaya'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submitSewa(context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
