import 'package:expense_app/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

class NewTansaction extends StatelessWidget {

   final Function addTx;
  NewTansaction(this.addTx);
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            OutlinedButton(
              onPressed: () {
                addTx(titleController.text,double.parse(amountController.text));
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple.shade600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
