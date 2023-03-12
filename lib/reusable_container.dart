import 'package:flutter/material.dart';

// Refactoring code ,DRY
class ReusableContainer extends StatelessWidget {
  // Customize Widgets

  const ReusableContainer({
    super.key,
    required this.mycolor,
    required this.mycontainer,
  });

  final Color mycolor;
  final Widget mycontainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: mycolor,
      ),
      child: mycontainer,
    );
  }
}
