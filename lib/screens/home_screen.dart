
import 'package:flutter/material.dart';
import 'package:tiktok_clone/components/posts/post_component.dart';
import 'package:tiktok_clone/components/video_player/video_player_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile":{
      "username" : 'esperantkela',
      "avatar" : 'assets/profile/profile-1.jpg',
      
    },

    "media" : "assets/videos/video-1.mp4",
    "description" : "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "likeCount" : 11500,
    "commentCount" : 650,
  },
   {
    "profile":{
      "username" : 'johndoe',
      "avatar" : 'assets/profile/profile-2.JPG'
    },

    "media" : "assets/videos/video-2.mp4",
    "description" : "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
    "likeCount" : 21000,
    "commentCount" : 950,
  }
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body:  PageView(
        scrollDirection: Axis.vertical,
        children: data.map((item){
          return PostComponent(item : item);
        }).toList(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value){
          print(value);
        },
        backgroundColor: Colors.black,
        elevation: 0,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: 'add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'messenger',
          ),
        ],
      ),
     
      
    );
  }
}