import 'package:flutter/material.dart';

class PilihBarang extends StatefulWidget {
  const PilihBarang({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PilihBarangState createState() => _PilihBarangState();
}

//isian untuk inputan barang
class _PilihBarangState extends State<PilihBarang> {
  final List<String> items = [
    'Barang 1',
    'Barang 2',
    'Barang 3',
    'Barang 4',
    'Paket 1',
    'Paket 2',
    'Paket 3',
    'Paket 4'
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

  void _updateQuantity(int index, String value) {
    int? quantity = int.tryParse(value);
    if (quantity != null && quantity >= 0) {
      setState(() {
        quantities[index] = quantity;
      });
    }
  }

  void _submitSelection(BuildContext context) {
    for (int i = 0; i < items.length; i++) {
      if (checkedItems[i]) {}
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Barang berhasil dipilih')),
    );
    Navigator.pushReplacementNamed(context, '/sewa');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pilih Barang'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
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
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            labelText: '', //isian text jumlah
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) => _updateQuantity(index, value),
                          enabled: checkedItems[index],
                          controller: TextEditingController(
                            text: quantities[index].toString(),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _submitSelection(context),
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
