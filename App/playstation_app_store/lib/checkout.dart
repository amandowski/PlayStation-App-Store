import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/consoles.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/shipping.dart';
import 'package:playstation_app_store/billing.dart';
import 'package:playstation_app_store/total.dart';
import 'package:playstation_app_store/cart.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "Shipping",
                ),
                Tab(
                  text: "Billing",
                ),
                Tab(
                  text: "Total",
                ),
              ],
            ),
            title: Text(
              "Checkout",
              style: TextStyle(
                fontSize: 35.0,
              ),
            ),
            backgroundColor: Colors.indigo[900],
          ),
          body: TabBarView(
            children: [
              Shipping(),
              Billing(),
              Total(),
            ],
          ),
        ),
      ),
    );
  }
}
