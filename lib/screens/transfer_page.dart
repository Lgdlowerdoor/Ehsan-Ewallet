import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  final TextEditingController amountController = TextEditingController();

  TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer Uang'),
        backgroundColor: Colors.blue, // Warna biru pada appBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Masukkan Jumlah Transfer',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Warna biru pada judul
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            // Input Jumlah Uang
            TextField(
              controller: amountController,
              decoration: const InputDecoration(
                labelText: 'Jumlah Uang',
                labelStyle: TextStyle(color: Colors.blue), // Warna label biru
                hintText: 'Masukkan jumlah uang',
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Border biru saat fokus
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            // Tombol Transfer dengan warna biru dan teks putih
            ElevatedButton(
              onPressed: () {
                // Logika transfer uang dapat diterapkan di sini
                if (amountController.text.isNotEmpty) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Transfer Berhasil'),
                      content: Text('Transfer sebesar ${amountController.text} berhasil dilakukan.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Tutup'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Teks putih pada tombol
              ),
              child: const Text('Transfer'),
            ),
          ],
        ),
      ),
    );
  }
}
