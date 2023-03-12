// ignore_for_file: prefer_const_constructors

import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.myIcon});

  final Icon myIcon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      // ignore: sort_child_properties_last
      child: myIcon,
      onPressed: () {},
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: inactiveReusableContainercolor,
    );
  }
}
