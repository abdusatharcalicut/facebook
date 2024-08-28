import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget implements PreferredSizeWidget{
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        "facebook",
        style: TextStyle(
          color: Colors.blue,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        CircularButton(
          buttonIcon: Icons.add,
          buttonAction: () {
            print("Go to Add Page");
          },
        ),
        CircularButton(
          buttonIcon: Icons.search,
          buttonAction: () {
            print("Go to Search Page");
          },
        ),
        CircularButton(
          buttonIcon: Icons.chat,
          buttonAction: () {
            print("Go to Chat Page");
          },
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
