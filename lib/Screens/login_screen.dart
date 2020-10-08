import 'package:ecommerceapp/Screens/SignupScreen.dart';
import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var customTextField = CustomTextField(
      onClick: null,
      hint: 'Enter your email',
      icon: Icons.email,
    );
    return Scaffold(
      backgroundColor: KMainColor,
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                  height: MediaQuery.of(context).size.height * .3,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/icons/buy100.png'),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Text(
                            'Buy it',
                            style:
                                TextStyle(fontFamily: 'Pacifico', fontSize: 25),
                          ))
                    ],
                  ))),
          SizedBox(
            height: height * .1,
          ),
          customTextField,
          SizedBox(
            height: height * .02,
          ),
          CustomTextField(
            hint: 'Enter your password',
            icon: Icons.lock,
            onClick: null,
          ),
          SizedBox(
            height: height * .05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {},
              color: Colors.black,
              child: Text(
                'Login',
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
                  Navigator.pushNamed(context, SignupScreen.id);
                },
                child: Text(
                  'Signup',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
