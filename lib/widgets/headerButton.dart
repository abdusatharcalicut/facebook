import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget headerButton({
  required String buttonText,
  required IconData buttonIcon,
  required void Function() buttonAction,
  required Color buttonColor,
  required TextStyle buttonTextColor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: buttonColor,
    ),
    label: Text(
      buttonText,
      style: buttonTextColor,
    ),
  );
}
