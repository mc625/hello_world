import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invoice'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'DATA SEWA 1',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 16),
            const Text('Nama : Adit Sopo Jarwo',
                style: TextStyle(fontSize: 16)),
            const Text('Alamat : Jl. Mawar, Kota Jakarta Timur, DKI Jakarta',
                style: TextStyle(fontSize: 16)),
            const Text('No Hp : 1234567890', style: TextStyle(fontSize: 16)),
            const Text('Tanggal Pinjam : 10 November 2024',
                style: TextStyle(fontSize: 16)),
            const Text('Tanggal Pengembalian : 12 November 2024',
                style: TextStyle(fontSize: 16)),
            const Text('Biaya Sewa  : Rp 160.000',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Barang Disewa:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('2x Tenda'),
                  Text('4x Sleeping Bag'),
                  Text('4x Matras'),
                  Text('2x Kompor Portable'),
                  Text('1x Set Alat Masak'),
                  Text('4x Senter'),
                  Text('1x P3K'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Paket berhasil ditambahkan')),
                  ),
                  child: const Text('Download'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  child: const Text('Kembali'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
