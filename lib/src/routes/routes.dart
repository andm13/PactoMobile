import 'package:flutter/material.dart';
import 'package:pacto_movil/src/pages/home_page.dart';
import 'package:pacto_movil/src/pages/login_page.dart';
//Nuestras importaciones

Map<String, WidgetBuilder> getRoutesAplication() {
  final routes = <String, WidgetBuilder>{
    '/': (BuildContext context) => LoginPage(),
    'home': (BuildContext context) => HomePage(),
  };

  return routes;
}
