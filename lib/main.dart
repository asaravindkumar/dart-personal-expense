import 'package:dartpersonalexpense/ExpenseCard.dart';
import 'package:dartpersonalexpense/ExpenseModel.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyExpenseTracker());
}

class MyAppState extends State<MyExpenseTracker> {
  final List<Expense> expenses = [];

  MyAppState() {
    expenses.add(Expense(
        id: 'This is in shopping mall',
        amount: 100,
        madeon: DateTime.now(),
        type: 'Shopping'));
    expenses.add(Expense(
        id: 'This is from cinemas',
        amount: 80,
        madeon: DateTime.now(),
        type: 'Entertainment'));
    expenses.add(Expense(
        id: 'Paid for charity',
        amount: 50,
        madeon: DateTime.now(),
        type: 'Charity'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
        ),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    child: Text(
                      "Chart1",
                      style: TextStyle(color: Colors.green, fontSize: 40),
                    ),
                  ),
                  Card(
                    color: Colors.lightGreenAccent,
                    child: Text(
                      "Chart2",
                      style: TextStyle(color: Colors.green, fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: expenses.map((exp) {
                  return ExpenseCard(exp);
                }).toList(),
              ),
            ),
            FloatingActionButton(
              child: Text(
                "+",
                style: TextStyle(
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: null,
            )
          ]),
        ),
      ),
    );
  }
}

class MyExpenseTracker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
