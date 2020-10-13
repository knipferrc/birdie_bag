import 'package:birdie_bag/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:birdie_bag/pages/login_page/login_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Birdie Bag',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 20,
          ),
          Text('Get Started',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22.0)),
          SizedBox(height: 15.0),
          Text(
              'Lets take a look at whats in your bag and build the perfect birdie bag',
              style: TextStyle(color: Colors.white70)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.red,
                onPressed: () {},
                icon: const Icon(Icons.open_in_new, color: Colors.white),
                label: Text("View Bag"),
                textColor: Colors.white,
              ),
              SizedBox(width: 10.0),
              FlatButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.grey[700],
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                icon: const Icon(Icons.login, color: Colors.white),
                label: Text("Login"),
                textColor: Colors.white,
              )
            ],
          )
        ],
      ),
    ));
  }

  SliverToBoxAdapter _buildFavorites(double screenHeight) {
    return SliverToBoxAdapter(
        child: Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Favorites",
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Hades"),
                ],
              ),
              Column(
                children: [
                  Text("Hades"),
                ],
              ),
              Column(
                children: [
                  Text("Hades"),
                ],
              )
            ],
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: CustomAppBar(),
        body: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: [_buildHeader(screenHeight), _buildFavorites(screenHeight)],
        ));
  }
}
