import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatelessWidget {
  NavigatorPage(
      {this.password,
      this.email,
      this.dropDownValue,
      this.name,
      this.shopName,
      @required this.isCustomer});
  String email;
  String password;
  String name;
  String shopName;
  String dropDownValue;
  bool isCustomer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aziz'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            isCustomer
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Email:'),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(email),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Password:'),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(password),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Name:'),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(name),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Shop name:'),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(shopName),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Type:'),
                      SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(dropDownValue),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                    ],
                  ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop('hello massage from navigator');
                },
                child: Text('Sign out')),
          ],
        ),
      ),
    );
  }
}
