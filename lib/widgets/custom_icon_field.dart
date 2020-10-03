import 'package:flutter/material.dart';

class CustomIconField extends StatelessWidget {
  final String icon;

  CustomIconField({@required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
            height: MediaQuery.of(context).size.height * .3,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage(icon),
                ),
                Positioned(
                    bottom: 0,
                    child: Text(
                      'Buy it',
                      style: TextStyle(fontFamily: 'Pacifico', fontSize: 25),
                    ))
              ],
            )));
  }
}
