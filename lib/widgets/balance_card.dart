import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  // Menambahkan parameter key pada konstruktor
  const BalanceCard({super.key, required this.balance});

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Menambahkan const pada Text yang tidak berubah
            const Text(
              'Saldo Anda',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Menambahkan const pada Text yang tidak berubah
            Text(
              'Rp ${balance.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
