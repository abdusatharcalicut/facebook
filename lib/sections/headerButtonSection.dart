import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class HeaderButtonSection extends StatelessWidget {
  // const HeaderButtonSection({super.key});
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection({
    required this.buttonOne,
    required this.buttonTwo,
    required this.buttonThree,
  });
  
  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}

// class FlatButton {
//   static icon({required Null Function() onPressed, required Icon icon, required Text label}) {}
// }