import 'package:birdie_bag/pages/home_page/widgets/favorites_widget.dart';
import 'package:birdie_bag/pages/home_page/widgets/header_widget.dart';
import 'package:birdie_bag/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [HeaderWidget(), FavoritesWidget()],
        ));
  }
}
