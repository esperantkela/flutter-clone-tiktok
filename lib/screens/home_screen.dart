
import 'package:flutter/material.dart';
import 'package:tiktok_clone/components/video_player/video_player_component.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile":{
      "username" : 'esperantkela'
    },

    "media" : "assets/videos/video-1.mp4",
    "description" : "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  },
   {
    "profile":{
      "username" : 'johndoe'
    },

    "media" : "assets/videos/video-2.mp4",
    "description" : "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."
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
          return VideoPlayerComponent(
            media: item['media'],
          );
        }).toList(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
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
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'messenger',
          ),
        ],
      ),
     
      
    );
  }
}