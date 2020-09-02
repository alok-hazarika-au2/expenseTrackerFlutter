import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final tittleController = TextEditingController();
  final amountController = TextEditingController();

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
              onPressed: () {
                print(tittleController.text);
                print(amountController.text);
              },
              child: Text('Add an Expense'),
              textColor: Colors.blue[300],
            ),
          ],
        ),
      ),
    );
  }
}
