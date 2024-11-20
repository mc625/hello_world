import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    title: Image.asset(
                      'assets/images/logo_soko.png',
                      height: 150,
                      width: 150,
                    ),
                    onTap: () => Navigator.pushNamed(context, '/dashboard'),
                  ),
                  ListTile(
                    title: const Text('+ Barang',
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/barang'),
                  ),
                  ListTile(
                    title: const Text('+ Paket',
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/paket'),
                  ),
                  ListTile(
                    title: const Text('+ Sewa',
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/sewa'),
                  ),
                  ListTile(
                    title: const Text('Laporan',
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/pemasukan'),
                  ),
                  ListTile(
                    title: const Text('Logout',
                        style: TextStyle(color: Colors.white)),
                    onTap: () => Navigator.pushNamed(context, '/'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'SEWA AKTIF',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
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
                child: const Text(
                  'Data Aktif 1',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //coding diklik
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
                child: const Text(
                  'Data Aktif 2',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //coding diklik
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
                child: const Text(
                  'Data Aktif 3',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //coding diklik
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
                child: const Text(
                  'Data Aktif 4',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //coding diklik
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
                child: const Text(
                  'Data Aktif 5',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
