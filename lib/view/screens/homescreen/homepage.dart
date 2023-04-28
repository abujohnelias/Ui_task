import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task/view/screens/homescreen/sections/default_payment_sec.dart';
import 'package:ui_task/view/screens/homescreen/sections/transaction_limit_sec.dart';
import 'package:ui_task/view/screens/homescreen/sections/transaction_sec.dart';
import 'package:ui_task/view/screens/homescreen/sections/transactions_sec.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("payment"),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.info_outline_rounded)],
      ),
      body:ListView(
     
        children: [
          Transaction_limit(),
          ListExpTile(),
          Transaction(),
          TransactionList(),
        ],
      ),
    );
  }
}
