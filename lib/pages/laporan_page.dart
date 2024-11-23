import 'package:flutter/material.dart';

class LaporanPage extends StatelessWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laporan'),
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
            const Text(
              'TOTAL : Rp 3.330.000',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  backgroundColor: Colors.green),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/invoice');
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
                      'Data Selesai 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jake'),
                        Text('Rp 200.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/invoice');
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
                      'Data Selesai 2',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Joe'),
                        Text('Rp 500.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/invoice');
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
                      'Data Selesai 3',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mike'),
                        Text('Rp 230.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/invoice');
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
                      'Data Selesai 4',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Alex'),
                        Text('Rp 400.000'),
                      ],
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/invoice');
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
                      'Data Selesai 5',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jarwo'),
                        Text('Rp 2.000.000'),
                      ],
                    )
                  ],
                ),
              ),
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
