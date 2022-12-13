import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Image.asset(
          "assets/images/aog-white.png",
          height: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Álcool x Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Big Shoulders Display",
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
