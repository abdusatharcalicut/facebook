import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
              onPressed: () {
                print("More Action Clicked");
              },
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey[700],
              ),
            ),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  name: "GrabFood",
                  avatar: daa,
                  mutualFriends: "6 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship!!");
                  },
                  removeFriend: () {
                    print("Remove Person!!");
                  },
                ),
                SuggestionCard(
                  name: "Full On",
                  avatar: fgh,
                  mutualFriends: "9 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship!!");
                  },
                  removeFriend: () {
                    print("Remove Person!!");
                  },
                ),
                SuggestionCard(
                  name: "Life Of Art",
                  avatar: ghg,
                  mutualFriends: "4 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship!!");
                  },
                  removeFriend: () {
                    print("Remove Person!!");
                  },
                ),
                SuggestionCard(
                  name: "GrabFood",
                  avatar: qwe,
                  mutualFriends: "7 Mutual Friends",
                  addFriend: () {
                    print("Request Friendship!!");
                  },
                  removeFriend: () {
                    print("Remove Person!!");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
