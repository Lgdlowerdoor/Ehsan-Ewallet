import 'package:flutter/material.dart';
import '../widgets/transaction_item.dart';
import '../utils/mock_data.dart';

class TransactionHistoryPage extends StatelessWidget {
  const TransactionHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Pastikan mockData memiliki tipe Map yang benar
    var transactions = mockData['transactions'] as List<dynamic>?;

    // Jika transaksi null, tampilkan list kosong
    if (transactions == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat Transaksi'),
          backgroundColor: Colors.blue, // Warna biru pada appBar
        ),
        body: const Center(child: Text('Tidak ada riwayat transaksi')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Transaksi'), // Menggunakan const untuk Text
        backgroundColor: Colors.blue, // Warna biru pada appBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: transactions.length, // Menggunakan length pada List
          itemBuilder: (context, index) {
            var transaction = transactions[index]; // Mengakses transaksi berdasarkan index
            return TransactionItem(transaction: transaction); // Tampilkan item transaksi
          },
        ),
      ),
    );
  }
}
