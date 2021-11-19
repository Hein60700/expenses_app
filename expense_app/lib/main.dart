
import 'package:flutter/material.dart';
import 'widgets/user_transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Expense App"),
        leading: const Icon(
          Icons.money,
          size: 40,
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            child: const Card(
              child: Text("chart"),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
         UserTransaction(),
        ],
      ),
    );
  }
}
