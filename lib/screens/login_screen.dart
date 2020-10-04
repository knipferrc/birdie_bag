import 'package:birdie_bag/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildLoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () => print('Login Button Pressed'),
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Text(
          'Login',
          style: TextStyle(
            color: Colors.blue[700],
            fontSize: 18.0,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        elevation: 0,
      ),
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue[300],
                      Colors.blue[500],
                      Colors.blue[600],
                      Colors.blue[800],
                    ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 120.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      InputField(
                        labelText: "Email",
                        hintText: "Enter your Email",
                        icon: Icons.email,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      InputField(
                        labelText: "Password",
                        hintText: "Enter your Password",
                        icon: Icons.lock,
                        obscureText: true,
                      ),
                      _buildLoginButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
