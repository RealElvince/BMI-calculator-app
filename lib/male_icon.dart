import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaleIcon extends StatelessWidget {
  const MaleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
          color: Color(0x99FFFFFF),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0x99FFFFFF),
          ),
        )
      ],
    );
  }
}
