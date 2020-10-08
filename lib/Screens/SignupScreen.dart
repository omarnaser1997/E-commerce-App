import 'package:ecommerceapp/services/auth.dart';
import 'package:ecommerceapp/widgets/custom_icon_field.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  static String id = 'SignupScreen';
  static String _email, _password;

  final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: KMainColor,
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            CustomIconField(
              icon: 'images/icons/buy100.png',
            ),
            SizedBox(
              height: height * .04,
            ),
            CustomTextField(
              onClick: (value) {},
              icon: Icons.perm_identity,
              hint: 'Enter your name',
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
              onClick: (value) {
                _email = value;
              },
              hint: 'Enter your email',
              icon: Icons.email,
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
              onClick: (value) {
                _password = value;
              },
              hint: 'Enter your password',
              icon: Icons.lock,
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () async {
                  if (_globalKey.currentState.validate()) {
                    //do some thing
                    _globalKey.currentState.save();
                    print(_email);
                    print(_password);
                    final authResult = await _auth.signUp(_email, _password);
                    print(authResult.user.uid);
                  }
                },
                color: Colors.black,
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: height * .05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Do have an account ?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, Signup_Screen.id);
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
