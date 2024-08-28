import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/widgets/appBar.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/widgets/posters.dart';

class HeaderSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HeaderButtonSection(
              
              buttonOne: headerButton(
                buttonAction: () {
                  print("Go Live");
                },
                buttonColor: Colors.red,
                buttonIcon: Icons.video_call,
                buttonText: "Live",
                buttonTextColor: TextStyle(color: Colors.blue),
              ),
              buttonTwo: headerButton(
                buttonAction: () {
                  print("Take Photo!!");
                },
                buttonColor: Colors.green,
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",
                buttonTextColor: TextStyle(color: Colors.blue),
              ), 
              buttonThree: headerButton(
                buttonAction: () {
                  print("Create Room");
                },
                buttonColor: Colors.purple,
                buttonIcon: Icons.video_call,
                buttonText: "Room",
                buttonTextColor: TextStyle(color: Colors.blue),
              ),
              ),
        ],
      ),
    );
  }
}