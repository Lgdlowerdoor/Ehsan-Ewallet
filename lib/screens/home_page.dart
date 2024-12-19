import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/transaction_item.dart';
import '../utils/mock_data.dart';
import 'transaction_history.dart';
import 'transfer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Pastikan mockData['transactions'] adalah List
    var transactions = mockData['transactions'] as List<dynamic>?;

    // Jika transaksi null, tampilkan list kosong
    if (transactions == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Ehsan - E-Wallet'),
          backgroundColor: Colors.blue, // Warna biru pada appBar
        ),
        body: const Center(child: Text('Tidak ada riwayat transaksi')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ehsan - E-Wallet'),
        backgroundColor: Colors.blue, // Warna biru pada appBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Menampilkan saldo dengan warna kuning pada teks
            BalanceCard(balance: mockData['balance'] as double),

            const SizedBox(height: 20),
            // Riwayat transaksi dengan teks yang menonjol (warna biru dan bold)
            const Text(
              'Riwayat Transaksi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Warna biru pada judul
              ),
            ),
            const SizedBox(height: 10),
            // Menampilkan list transaksi
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  var transaction = transactions[index];
                  return TransactionItem(transaction: transaction); // Tampilkan item transaksi
                },
              ),
            ),
            const SizedBox(height: 20),
            // Button untuk transfer dengan warna biru dan teks putih
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransferPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Teks putih pada button
              ),
              child: const Text('Transfer'),
            ),
            const SizedBox(height: 10),
            // Button untuk melihat riwayat transaksi dengan warna kuning dan teks biru
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TransactionHistoryPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.blue, backgroundColor: Colors.yellow, // Teks biru pada button
              ),
              child: const Text('Riwayat Transaksi'),
            ),
          ],
        ),
      ),
    );
  }
}
