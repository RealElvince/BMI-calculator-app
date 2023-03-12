// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class CustomizedIconButton extends StatelessWidget {
  const CustomizedIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white60,
      ),
      onPressed: onPressed(),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 28.0,
        height: 28.0,
      ),
      fillColor: inactiveReusableContainercolor,
      shape: CircleBorder(),
    );
  }
}
