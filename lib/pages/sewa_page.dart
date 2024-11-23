import 'package:flutter/material.dart';

class SewaPage extends StatefulWidget {
  const SewaPage({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _SewaPageState createState() => _SewaPageState();
}

class _SewaPageState extends State<SewaPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController biayaController = TextEditingController();
  final TextEditingController nohpController = TextEditingController();
  final TextEditingController tglpinjamController = TextEditingController();
  final TextEditingController tglkembaliController = TextEditingController();

  void _submitSewa(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Sewa berhasil ditambahkan')),
    );
    Navigator.pushReplacementNamed(context, '/dashboard');
  }

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2099),
    );
    if (picked != null) {
      String formattedDate =
          "${picked.day.toString().padLeft(2, '0')}-${picked.month.toString().padLeft(2, '0')}-${picked.year}";
      controller.text = formattedDate;
      setState(() {}); //refresh-an
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('+ Sewa'),
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: nohpController,
              decoration: const InputDecoration(labelText: 'No hp'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(labelText: 'Alamat'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextFormField(
                    controller: tglpinjamController,
                    decoration:
                        const InputDecoration(labelText: 'Tanggal Peminjaman'),
                    readOnly: true,
                    onTap: () => _selectDate(
                        context, tglpinjamController), //codingan tanggalan
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: tglkembaliController,
                    decoration: const InputDecoration(
                        labelText: 'Tanggal Pengembalian'),
                    readOnly: true,
                    onTap: () =>
                        _selectDate(context, tglkembaliController), // tanggalan
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/pbarang');
                  },
                  child: const Text('Barang / Paket'),
                ),
                Expanded(
                  child: TextField(
                    controller: biayaController,
                    decoration: const InputDecoration(
                        label: Center(
                      child: Text('Biaya'),
                    )),
                    keyboardType: TextInputType.number,
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
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
                    'Data data',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text('isian'),
                  Text('isian'),
                  Text('isian'),
                  Text('isian'),
                  Text('isian'),
                  Text('isian'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => _submitSewa(context),
                  child: const Text('Submit'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Batal'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
