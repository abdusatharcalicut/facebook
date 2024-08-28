import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/statusSection.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/home.dart';


class Posters extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return  Container(
      child: Column(
        children: [
          PostCard(
              name: "Dulquer",
              avatar: dulquer,
              publishedAt: "5h",
              postTitle: "Happy Ramzan!!",
              postImage: ramzan,
              showBlueTick: true,
              likeCount: "10K",
              shareCount: "1K",
              commentCount: "1K",
            ),
            thickDivider,
            PostCard(
              name: "Unni Mukundan",
              avatar: unnimukunthan,
              publishedAt: "2h",
              postTitle: "Childrens day",
              postImage: ghi,
              showBlueTick: true,
              likeCount: "1K",
              shareCount: "1.5K",
              commentCount: "1.2K",
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              name: "Vinayakan",
              avatar: vinayakan,
              publishedAt: "4h",
              postTitle: JunctionTitle,
              postImage: kmp,
              showBlueTick: true,
              likeCount: "1K",
              shareCount: "1.5K",
              commentCount: "1.2K",
            ),
        ],
      ),
    );
  }
}