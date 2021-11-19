import 'package:expense_app/models/transaction.dart';
import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 'id1',
      title: "shoes",
      amount: 40,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: 'id2',
      title: "clothes",
      amount: 50,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: 'id3',
      title: "lattop",
      amount: 500,
      dateTime: DateTime.now(),
    )
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        dateTime: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTansaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
