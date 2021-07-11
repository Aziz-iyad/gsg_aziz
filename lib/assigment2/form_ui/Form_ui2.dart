import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gsg_aziz2/assigment2//navigator/navigator.dart';
import 'package:string_validator/string_validator.dart';
import 'MerchantPage.dart';

enum userType { customer, merchant }

class Form_ui2 extends StatefulWidget {
  @override
  _Form_ui2State createState() => _Form_ui2State();
}

class _Form_ui2State extends State<Form_ui2> {
  userType keyValue = userType.customer;
  String email;
  String password;
  setEmail(String email) {
    this.email = email;
  }

  setPassword(String password) {
    this.password = password;
  }

  saveForm() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      print(this.email);
      print(this.password);
    }
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                        title: Text('customer'),
                        value: userType.customer,
                        groupValue: keyValue,
                        onChanged: (v) {
                          setState(() {
                            this.keyValue = v;
                          });
                        }),
                  ),
                  Expanded(
                    child: RadioListTile(
                        title: Text('merchant'),
                        value: userType.merchant,
                        groupValue: keyValue,
                        onChanged: (v) {
                          setState(() {
                            this.keyValue = v;
                          });
                        }),
                  ),
                ],
              ),
            ),
            this.keyValue == userType.customer
                ? Column(
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
                            labelText: 'email',
                          ),
                          onSaved: (String v) {
                            setEmail(v);
                          },
                          // validator: (String v) {
                          //   if (v.length == 0) {
                          //     return 'Requierd filed';
                          //   } else if (!isEmail(v)) {
                          //     return 'Invalide Input';
                          //   }
                          //   ;
                          // },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: TextFormField(
                          obscureText: this.value,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor: Colors.blue.withOpacity(0.3),
                              labelText: 'password',
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    value = !value;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove_red_eye,
                                ),
                              )),
                          onSaved: (String v) {
                            setPassword(v);
                          },
                          // validator: (String v) {
                          //   if (v.length == 0) {
                          //     return 'Requierd filed';
                          //   } else if (v.length < 6) {
                          //     return 'The password must be larger than 6 letters';
                          //   }
                          // },
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            saveForm();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NavigatorPage(
                                  email: email,
                                  password: password,
                                  isCustomer: true,
                                ),
                              ),
                            );
                          },
                          child: Text('Submite')),
                    ],
                  )
                : MerchantPage(),
          ],
        ),
      ),
    );
  }
}
