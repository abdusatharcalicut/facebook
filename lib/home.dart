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
import 'package:facebook/sections/headerSection.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarSection(),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            Posters(),
      ],
            ),
      ),
    );
    
  }
}
