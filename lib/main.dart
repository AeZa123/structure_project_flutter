import 'package:flutter/material.dart';
import 'package:structure_project_flutter/routes.dart';
import 'package:structure_project_flutter/themes/style.dart';

void main()  => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}