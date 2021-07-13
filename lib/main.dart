import 'package:flutter/material.dart';
import 'package:gsg_aziz2/assigment2/form_ui/Form_ui2.dart';
import 'package:gsg_aziz2/assigment2/navigator/error.dart';
import 'assigment2/Router.dart';
import 'assigment2/navigator/navigator.dart';

void main() {
  runApp(
    MaterialApp(
      navigatorKey: AppRouter.router.navKey,
      routes: {
        '/': (context) => Form_ui2(),
        'homePage': (context) => NavigatorPage(),
      },
      /*onGenerateRoute: (RouteSettings routeSettings) {
        String name = routeSettings.name;
        var arguments = routeSettings.arguments;
        switch (name) {
          case ('/'):
            return MaterialPageRoute(builder: (context) {
              return Form_ui2();
            });
          case ('homePage'):
            return MaterialPageRoute(builder: (context) {
              return NavigatorPage();
            });
          default:
            return MaterialPageRoute(builder: (context) {
              return ErrorPage();
            });
        }
      },*/
    ),
  );
}
