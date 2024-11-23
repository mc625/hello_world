import 'package:flutter/material.dart';

class BarangPage extends StatelessWidget {
  final TextEditingController namaBarangController = TextEditingController();
  final TextEditingController biayaController = TextEditingController();

  BarangPage({super.key});

  void _submitBarang(BuildContext context) {
    // Tambahkan logika penyimpanan barang disini
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Barang berhasil ditambahkan')),
    );
    Navigator.pushReplacementNamed(context, '/dbarang');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Barang'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaBarangController,
              decoration: const InputDecoration(labelText: 'Nama Barang'),
            ),
            TextField(
              controller: biayaController,
              decoration: const InputDecoration(labelText: 'Biaya'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submitBarang(context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
