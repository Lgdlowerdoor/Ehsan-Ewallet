import 'package:flutter/material.dart';
import '../models/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(transaction.description),
        subtitle: Text(transaction.date),
        trailing: Text('Rp ${transaction.amount.toStringAsFixed(2)}'),
      ),
    );
  }
}
