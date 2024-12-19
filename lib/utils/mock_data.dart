import '../models/transaction.dart';

var mockData = {
  'balance': 500000.00,
  'transactions': [
    Transaction(description: 'Pembelian Pulsa', amount: 100000.00, date: '2023-12-01'),
    Transaction(description: 'Transfer ke Teman', amount: 150000.00, date: '2023-12-02'),
    Transaction(description: 'Pembayaran Tagihan Listrik', amount: 200000.00, date: '2023-12-03'),
  ],
};
