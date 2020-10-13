import 'package:birdie_bag/pages/login_page/login_page.dart';
import 'package:birdie_bag/pages/root_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(BirdieBagApp());
}

class BirdieBagApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container(
            child: Text("Error Occured!"),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            title: 'Birdie Bag',
            debugShowCheckedModeBanner: false,
            home: Navigator(
              pages: [
                MaterialPage(key: ValueKey("RootPage"), child: RootPage()),
              ],
              onPopPage: (route, result) => route.didPop(result),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}
