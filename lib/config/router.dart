import 'package:birdie_bag/screens/home_screen.dart';
import 'package:birdie_bag/screens/login_screen.dart';
import 'package:birdie_bag/screens/my_bag_screen.dart';
import 'package:birdie_bag/screens/profile_screen.dart';

Object appRoutes = {
  "/": (context) => HomeScreen(),
  "/login": (context) => LoginScreen(),
  "/profile": (context) => ProfileScreen(),
  "/my-bag": (context) => MyBagScreen(),
};
