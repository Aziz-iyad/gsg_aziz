import 'package:flutter/material.dart';

const double kDefaultPadding = 20.0;
// الطعجة الي عند الدائرة بتقدر تعملها زي التصميم بالزبط بالكاستوم باينتر بس نسيتها وهي خرا فسحب عليها

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding * 2.3),
        height: size.height * 0.4,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                right: kDefaultPadding,
                left: kDefaultPadding,
                bottom: kDefaultPadding + 36,
              ),
              height: size.height * 0.4 - 60,
              //المربع البرتقاني بتطلعه وبتنزله لمن تغير قيمة ال 60 الي فوق
              decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              child: Row(
                children: [
                  Text(
                    'حط الصورة',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Positioned(
                left: 0,
                bottom: 0,
                //بتقدر من هان تنزل الدائرة اكتر او اقل
                right: 0,
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: Text(
                    'حط الصورة',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
