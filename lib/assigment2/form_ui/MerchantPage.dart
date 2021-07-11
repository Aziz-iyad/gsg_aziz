import 'package:flutter/material.dart';
import 'package:gsg_aziz2/assigment2/navigator/navigator.dart';

class MerchantPage extends StatelessWidget {
  Function function;
  // MerchantPage({@required this.function});
  List categories = ['Fashion', 'Shoes', 'Software', 'Electronics', 'midecal'];
  String dropDownValue = 'Fashion';
  String name;
  String shopName;
  setName(String name) {
    this.name = name;
  }

  setShopName(String shopName) {
    this.shopName = shopName;
  }

  saveForm() {
    if (formKey2.currentState.validate()) {
      formKey2.currentState.save();
    }
  }

  GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey2,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.blue.withOpacity(0.3),
                  labelText: 'name',
                ),
                onSaved: (String v) {
                  setName(v);
                },
                // validator: (String v) {
                //   if (v.length == 0) {
                //     return 'Requierd filed';
                //   }
                //   ;
                // },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.blue.withOpacity(0.3),
                  labelText: 'Shop name',
                ),
                onSaved: (String v) {
                  setShopName(v);
                },
                // validator: (String v) {
                //   if (v.length == 0) {
                //     return 'Requierd filed';
                //   }
                //   ;
                // },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  onChanged: (v) {
                    this.dropDownValue = v;
                  },
                  value: this.dropDownValue,
                  items: categories.map((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  saveForm();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigatorPage(
                        name: name,
                        dropDownValue: dropDownValue,
                        shopName: shopName,
                        isCustomer: false,
                      ),
                    ),
                  );
                },
                child: Text('Submite')),
          ],
        ),
      ),
    );
  }
}
