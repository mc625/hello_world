import 'package:flutter/material.dart';

class PemasukanPage extends StatelessWidget {
  final TextEditingController transaksiController = TextEditingController();
  final TextEditingController selesaiController = TextEditingController();
  final TextEditingController bayarController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  PemasukanPage({super.key});

  void _submitPemasukan(BuildContext context) {
    // Logika untuk menyimpan data pemasukan
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Pemasukan berhasil ditambahkan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pemasukan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: transaksiController,
              decoration: const InputDecoration(labelText: 'Transaksi'),
            ),
            TextField(
              controller: selesaiController,
              decoration: const InputDecoration(labelText: 'Selesai'),
            ),
            TextField(
              controller: bayarController,
              decoration: const InputDecoration(labelText: 'Bayar'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: totalController,
              decoration: const InputDecoration(labelText: 'Total'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submitPemasukan(context),
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
