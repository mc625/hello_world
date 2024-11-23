import 'package:flutter/material.dart';

class DataPaket extends StatelessWidget {
  const DataPaket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+Paket'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // isian ke halaman?
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Paket 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Tenda kecil'),
                    Text('Senter'),
                    Text('Matras'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kompor'),
                        Text('Rp 50.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // isian ke halaman?
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Paket 2',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Tenda Sedang'),
                    Text('Senter'),
                    Text('Matras 2x'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kompor'),
                        Text('Rp 75.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // isian ke halaman?
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Paket 3',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Tenda Jumbo'),
                    Text('Senter 2x'),
                    Text('Matras 2x'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kompor'),
                        Text('Rp 90.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // isian ke halaman?
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.blue, width: 1.5),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Paket 4',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text('Tenda Jumbo 2x'),
                    Text('Senter 2x'),
                    Text('Matras 2x'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Kompor'),
                        Text('Rp 125.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/paket');
              },
              child: const Text('Tambah'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
