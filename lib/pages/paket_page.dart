import 'package:flutter/material.dart';

class PaketPage extends StatelessWidget {
  final TextEditingController namaPaketController = TextEditingController();
  final TextEditingController barangController = TextEditingController();
  final TextEditingController biayaController = TextEditingController();

  PaketPage({super.key});

  void _submitPaket(BuildContext context) {
    // Tambahkan logika penyimpanan paket disini
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Paket berhasil ditambahkan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+ Paket'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaPaketController,
              decoration: const InputDecoration(labelText: 'Nama Paket'),
            ),
            TextField(
              controller: barangController,
              decoration: const InputDecoration(labelText: 'Barang'),
            ),
            TextField(
              controller: biayaController,
              decoration: const InputDecoration(labelText: 'Biaya'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submitPaket(context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
