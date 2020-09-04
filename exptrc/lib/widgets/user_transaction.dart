import 'package:flutter/material.dart';

import '../models/transaction_store.dart';
import './transaction_entry.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'T1',
      tittle: 'New veg purchase',
      amount: 1720.61,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T2',
      tittle: 'New fruit purchase',
      amount: 1760.98,
      date: DateTime.now(),
    ),
    Transaction(
      id: 'T3',
      tittle: 'New exotic purchase',
      amount: 7786.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String argTitle, double argAmount) {
    final newTx = Transaction(
      tittle: argTitle,
      amount: argAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransactions),
    ]);
  }
}
