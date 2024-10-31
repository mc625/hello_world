import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  final TextEditingController namaBarangController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController qtyController = TextEditingController();
  final TextEditingController totalController = TextEditingController();

  InvoicePage({super.key, required String data});

  void _submitInvoice(BuildContext context) {
    // Logika untuk menyimpan data invoice
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Invoice berhasil dibuat')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Invoice')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaBarangController,
              decoration:
                  const InputDecoration(labelText: 'Nama Barang / Paket'),
            ),
            TextField(
              controller: hargaController,
              decoration: const InputDecoration(labelText: 'Harga'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: qtyController,
              decoration: const InputDecoration(labelText: 'Jumlah'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: totalController,
              decoration: const InputDecoration(labelText: 'Total'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => _submitInvoice(context),
              child: const Text('Bayar'),
            ),
          ],
        ),
      ),
    );
  }
}
