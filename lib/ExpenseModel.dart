import 'package:flutter/material.dart';

class Expense {
  String id;
  String type;
  DateTime madeon;
  double amount;

  Expense(
      {@required this.id,
      @required this.type,
      @required this.madeon,
      @required this.amount});
}
