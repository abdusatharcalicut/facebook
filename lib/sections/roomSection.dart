import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RoomSection extends StatelessWidget {
  // const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          roomButton(),
          Avatar(displayImage:vinayakan, displayStatus: true,),
          Avatar(displayImage:unnimukunthan, displayStatus: true,),
          Avatar(displayImage:privthiraj, displayStatus: true,),
          Avatar(displayImage:dulquerold, displayStatus: true,),
          Avatar(displayImage:mohanlal, displayStatus: true,),
          Avatar(displayImage:unnimukunthan, displayStatus: true,),
          Avatar(displayImage:mammootty, displayStatus: true,),
        ],
      ),
    );
  }

  Widget roomButton() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: OutlinedButton.icon(
      onPressed: () {
        print("Create Chat Room Page!");
      },
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        side: BorderSide(width: 2, color: Colors.blue.shade100),
      ),
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "Create \n Room",
        style: TextStyle(color: Colors.blue),
      ),
    ),
    );
  }
}
