import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: vinayakan,
            story: vinayakan,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Prithiviraj",
            avatar: privthiraj,
            story: abc,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Unni Mukundan",
            avatar: unnimukunthan,
            story: bcd,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Dulquer Salmaan",
            avatar: dulquer,
            story: dulquer,
          ),
        ],
      ),
    );
  }
}