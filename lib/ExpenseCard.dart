import 'package:dartpersonalexpense/ExpenseModel.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final Expense exp;

  ExpenseCard(this.exp);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Text(
              "\$${exp.amount}",
              style: TextStyle(color: Colors.purple, fontSize: 40),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("This is from shopping"), Text("date time here")],
          )
        ],
      ),
    );
  }
}
