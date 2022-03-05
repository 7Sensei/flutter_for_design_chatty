import 'package:flutter/material.dart';
import 'package:flutter_for_design_chatty/theme.dart';
import 'package:flutter_for_design_chatty/widget/tile_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset(
                  'assets/images/profil1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina carpanter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Traveler Freelancer',
                  style: TextStyle(
                    color: lightBlue,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Freinds',
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profil2.png',
                        name: 'Vanica',
                        text: 'Sorry, you`re  not my ty...',
                        time: 'now',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profil3.png',
                        name: 'Jhon',
                        text: 'I saw it clearly and mig...',
                        time: '2:30',
                        unRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profil4.png',
                        name: 'Sabrina',
                        text: 'what are you doing tod...',
                        time: '3:30',
                        unRead: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Goup',
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta fair',
                        text: 'why does everyone ca..',
                        time: '11:11',
                        unRead: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'let`s have coffee at the...',
                        time: '7:11',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car which does not..',
                        time: '6:41',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Meet Up',
                        text: 'Hey, how do you learn t...',
                        time: '6:11',
                        unRead: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'I`ll play PUBG together l...',
                        time: '5:10',
                        unRead: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
