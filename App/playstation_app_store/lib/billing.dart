import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/cart.dart';
import 'package:playstation_app_store/item.dart';
import 'package:playstation_app_store/main.dart';

class Billing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Billing Details"),
        backgroundColor: Colors.indigo[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            // key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName(),
                _buildCardNumber(),
                _buildExpirationDate(),
                _buildSSC(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Name on Card
Widget _buildName() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Name on Card'),
    maxLength: 15,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Card Number
Widget _buildCardNumber() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Card Number'),
    maxLength: 15,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Expiration Date
Widget _buildExpirationDate() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Expiration Date'),
    maxLength: 10,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Security Code
Widget _buildSSC() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Security Code'),
    maxLength: 15,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}
