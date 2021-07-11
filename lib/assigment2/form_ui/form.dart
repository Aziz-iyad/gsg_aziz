import 'package:flutter/material.dart';

//المحاضرة القديمة مش المطلوب
class Form_ui extends StatefulWidget {
  @override
  _Form_uiState createState() => _Form_uiState();
}

class _Form_uiState extends State<Form_ui> {
  TextEditingController UserController = TextEditingController();

  TextEditingController PasswrdController2 = TextEditingController();
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.blue.withOpacity(0.3),
                labelText: 'email',
              ),
              controller: UserController,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
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
              controller: PasswrdController2,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (value == true) {
                  print(UserController.text);
                  print(PasswrdController2.text);
                } else {
                  print('cant print');
                }
              },
              child: Text('Submite'))
        ],
      ),
    );
  }
}
