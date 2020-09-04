import 'package:flutter/material.dart';

// import './user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final tittleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: tittleController,
              // onChanged: (value) {
              //   tittleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              child: Text('Add an Expense'),
              textColor: Colors.blue[300],
              onPressed: () {
                addTx(
                  tittleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
