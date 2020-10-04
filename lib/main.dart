import 'package:flutter/material.dart';

import 'package:birdie_bag/screens/login_screen.dart';
import 'package:birdie_bag/screens/home_screen.dart';

void main() {
  runApp(BirdieBagApp());
}

class BirdieBagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/login': (context) => LoginScreen(),
        });
  }
}
