import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:facebook/assets.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAt;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;
  final String likeCount;
  final String shareCount;
  final String commentCount;
  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    this.showBlueTick = false,
    required this.likeCount,
    required this.shareCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
              buttonAction: () {
                print("Go Like");
              },
              buttonColor: Colors.grey.shade700,
              buttonIcon: Icons.thumb_up_alt_outlined,
              buttonText: "Like",
              buttonTextColor: TextStyle(color: Colors.grey.shade700),
            ),
            buttonTwo: headerButton(
              buttonAction: () {
                print("Go Comment!!");
              },
              buttonColor: Colors.grey.shade700,
              buttonIcon: Icons.message_outlined,
              buttonText: "Comment",
              buttonTextColor: TextStyle(color: Colors.grey.shade700),
            ),
            buttonThree: headerButton(
              buttonAction: () {
                print("Share");
              },
              buttonColor: Colors.grey.shade700,
              buttonIcon: Icons.share_outlined,
              buttonText: "Share",
              buttonTextColor: TextStyle(color: Colors.grey.shade700),
            ),
          ),
        ],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(label: shareCount),
                SizedBox(
                  width: 5,
                ),
                displayText(label: "Shares"),
                SizedBox(
                  width: 10,
                ),
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print("Dropdown Pressed!!");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(
        postImage,
      ),
    );
  }

  Widget titleSection() {
    return postTitle != null && postTitle != "" ?
    Container(
      padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    ): SizedBox();
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 10,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(width: 10),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("Open More menu");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
