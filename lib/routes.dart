import 'package:flutter/widgets.dart';
// import 'package:structure_project_flutter/screens/bottomnav/account/account_screen.dart';
// import 'package:structure_project_flutter/screens/bottomnav/home/home_screen.dart';
// import 'package:structure_project_flutter/screens/bottomnav/notification/notification_screen.dart';
// import 'package:structure_project_flutter/screens/bottomnav/report/report_screen.dart';
// import 'package:structure_project_flutter/screens/bottomnav/setting/setting_screen.dart';
import 'package:structure_project_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:structure_project_flutter/screens/drawer/about/about_screen.dart';
import 'package:structure_project_flutter/screens/drawer/contact/contact_screen.dart';
import 'package:structure_project_flutter/screens/drawer/term/term_screen.dart';
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

  // for drawer
  "/about": (BuildContext context) => AboutScreen(),
  "/contact": (BuildContext context) => ContactScreen(),
  "/term": (BuildContext context) => TermScreen(),

  // for bottom navbar
  // "/home": (BuildContext context) => HomeScreen(),
  // "/account": (BuildContext context) => AccountScreen(),
  // "/notification": (BuildContext context) => NotificationScreen(),
  // "/report": (BuildContext context) => ReportScreen(),
  // "/setting": (BuildContext context) => SettingScreen(),

};