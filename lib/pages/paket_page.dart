import 'package:flutter/material.dart';

class PaketPage extends StatefulWidget {
  const PaketPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PilihBarangState createState() => _PilihBarangState();
}

//isian untuk inputan barang
class _PilihBarangState extends State<PaketPage> {
  final List<String> items = [
    'Barang 1',
    'Barang 2',
    'Barang 3',
    'Barang 4',
    'Barang 5',
    'Barang 6',
    'Barang 7',
    'Barang 8'
  ];
  List<bool> checkedItems = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<int> quantities = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
  ]; // harus sesuai string

  void _toggleCheckbox(int index, bool? value) {
    setState(() {
      checkedItems[index] = value ?? false;

      if (checkedItems[index]) {
        quantities[index]++;
      }
    });
  }

  void _submitPaket(BuildContext context) {
    // Tambahkan codinglogika penyimpanan paket disini
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Paket berhasil ditambahkan')),
    );
    Navigator.pushReplacementNamed(context, '/dpaket');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+Paket'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Nama Paket'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Biaya'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checkedItems[index],
                            onChanged: (value) => _toggleCheckbox(index, value),
                          ),
                          Text(items[index]),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submitPaket(context),
              style: ElevatedButton.styleFrom(),
              child: const Text(
                'Submit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
