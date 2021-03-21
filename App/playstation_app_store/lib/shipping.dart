import 'package:flutter/material.dart';
import 'package:playstation_app_store/accessories.dart';
import 'package:playstation_app_store/account.dart';
import 'package:playstation_app_store/cart.dart';
import 'package:playstation_app_store/item.dart';
import 'package:playstation_app_store/main.dart';

class Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping Details"),
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
                _buildlastName(),
                _buildphone(),
                _buildemail(),
                _buildadd1(),
                _buildadd2(),
                _buildcity(),
                _buildState(),
                _buildCountry(),
                _buildZipcode(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//First Name
Widget _buildName() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'First Name'),
    maxLength: 15,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Last Name
Widget _buildlastName() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Last Name'),
    maxLength: 25,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Phone Number
Widget _buildphone() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Phone no.'),
    maxLength: 10,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Email
Widget _buildemail() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
    maxLength: 50,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Address Line 1
Widget _buildadd1() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Address'),
    maxLength: 25,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Address Line 2
Widget _buildadd2() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Address2'),
    maxLength: 25,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// City
Widget _buildcity() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'City'),
    maxLength: 25,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// State
Widget _buildState() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'State'),
    maxLength: 15,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Country
Widget _buildCountry() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Country'),
    maxLength: 25,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}

// Zip
Widget _buildZipcode() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'ZipCode'),
    maxLength: 5,
    validator: (String value) {
      if (value.isEmpty) {
        return 'Name is Required';
      }

      return null;
    },
  );
}
