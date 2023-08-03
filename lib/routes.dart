import 'package:flutter/widgets.dart';
import 'package:structure_project_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:structure_project_flutter/screens/login/login_screen.dart';
import 'package:structure_project_flutter/screens/register/register_screen.dart';
import 'package:structure_project_flutter/screens/start/start_screen.dart';
import 'package:structure_project_flutter/screens/welcome/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => WelcomeScreen(),
  "/start": (BuildContext context) => StartScreen(title: 'start'),
  "/login": (BuildContext context) => LoginScreen(title: 'login'),
  "/register": (BuildContext context) => RegisterScreen(title: 'register'),
  "/dashboard": (BuildContext context) => DashboardScreen(),
};