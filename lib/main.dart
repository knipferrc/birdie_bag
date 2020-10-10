import 'package:birdie_bag/utils/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BirdieBagApp());
}

class BirdieBagApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birdie Bag',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
