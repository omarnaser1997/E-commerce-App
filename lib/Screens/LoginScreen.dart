import 'package:ecommerceapp/services/auth.dart';
import 'package:ecommerceapp/widgets/custom_icon_field.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<FormState> _globalKey2 = GlobalKey<FormState>();
  static String id = 'LoginScreenTest';
  static String email, password;

  final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: KMainColor,
      body: Form(
        key: _globalKey2,
        child: ListView(
          children: <Widget>[
            CustomIconField(
              icon: 'images/icons/buy100.png',
            ),
            SizedBox(
              height: height * .04,
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
              onClick: (value) {
                email = value;
              },
              hint: 'Enter your email',
              icon: Icons.email,
            ),
            SizedBox(
              height: height * .02,
            ),
            CustomTextField(
              onClick: (value) {
                password = value;
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
                  if (_globalKey2.currentState.validate()) {
                    //do some thing
                    _globalKey2.currentState.save();
                    final result = await _auth.signIn(email, password);
                    print(result.user.uid);
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
                  'Don\'t have an account ?',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Text(
                    ' SignUp',
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
