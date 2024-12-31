import 'package:flutter/material.dart';
import 'package:profile_instagram_design_fake/ui/custom_circle_avatar.dart';

class TagPage extends StatelessWidget {
  const TagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        spacing: 0,
        children: [
          SizedBox(height: 20,),
          Center(child: CustomCircleAvatar(radius: 50,child: Icon(Icons.person_pin_outlined,size: 50,),)),
          SizedBox(height: 5,),
          Center(child: Text("Photos and videos of you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
          SizedBox(height: 5,),
          Center(child: Text("When people tag you i photos and",style: TextStyle(fontWeight: FontWeight.w200),)),
          Center(child: Text("videos, they'll appear here",style: TextStyle(fontWeight: FontWeight.w200),))


        ],
      ),
    );
  }
}
