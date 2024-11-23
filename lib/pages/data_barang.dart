import 'package:flutter/material.dart';

class DataBarang extends StatelessWidget {
  const DataBarang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+Barang'),
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
              onTap: () {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tenda Kecil',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rp 15.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tenda Sedang',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rp 25.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tenda Jumbo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rp 50.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kompor',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rp 10.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Senter',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text('Rp 5.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/barang');
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
