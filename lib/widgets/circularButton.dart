import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  // const AppBarButton({super.key});
  //variables declairing
  final IconData buttonIcon;
  final void Function() buttonAction;
  final Color iconColor;
  //constructor
  CircularButton({
    //assign / initializing to variable
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          buttonIcon,
          color: iconColor,
          size: 20,
        ),
        onPressed: buttonAction,
      ),
    );
  }
}
