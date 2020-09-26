import 'package:ecommerceapp/constants.dart';
import 'package:ecommerceapp/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
          CustomTextField(
            hint: 'Enter your email',
            icon: Icons.email,
          ),
          SizedBox(
            height: height * .02,
          ),
          CustomTextField(
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
              Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ],
          )
        ],
      ),
    );
  }
}
