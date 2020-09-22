import 'package:flutter/material.dart';

main() {
  runApp(MyExpenseTracker());
}

class MyExpenseTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expense Tracker"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                "\$133",
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 40),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("This is from shopping"),
                                Text("date time here")
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                "\$133",
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 40),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("This is from shopping"),
                                Text("date time here")
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Text(
                                "\$133",
                                style: TextStyle(
                                    color: Colors.purple, fontSize: 40),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("This is from shopping"),
                                Text("date time here")
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
