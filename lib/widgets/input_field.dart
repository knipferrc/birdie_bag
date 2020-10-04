import 'package:flutter/material.dart';

import 'package:birdie_bag/utils/styles.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const InputField(
      {Key key, this.labelText, this.hintText, this.icon, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: labelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: boxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            obscureText: obscureText ? true : false,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: hintText,
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}