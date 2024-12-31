import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:profile_instagram_design_fake/ui/custom_circle_avatar.dart';
import 'package:profile_instagram_design_fake/ui/image_video_page.dart';
import 'package:profile_instagram_design_fake/ui/tag_page.dart';

import 'helper/circle_with_icon_clipper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pageController= PageController(initialPage: 0);

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            snap: true,
            automaticallyImplyLeading: true,
            title: Row(
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 18,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 2,
                ),
                const Text(
                  "n0srati",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 18,
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Colors.red,
                )
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_sharp,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 8,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  spacing: 25,
                  children: [
                    SizedBox(
                      width: 0.1,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipPath(
                          clipper: CircleWithIconClipper(),
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                                'assets/image/aloneTree.jpeg'), // آدرس تصویر خود را جایگزین کنید
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          right: 4,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      spacing: 2,
                      children: [
                        const Text(
                          "4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text("Post")
                      ],
                    ),
                    Column(
                      spacing: 2,
                      children: [
                        const Text("182",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        const Text("followers")
                      ],
                    ),
                    Column(
                      spacing: 2,
                      children: [
                        const Text("306",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        const Text("following")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Nosrati"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("M_M"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("Only I can Change My Life"),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text("No One Can Do It For Me"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  spacing: 5,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                          width: screenSize.width / 3,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                foregroundColor: Colors.black),
                            child: Text("Edit profile"),
                          )),
                    ),
                    Expanded(
                      child: SizedBox(
                          width: screenSize.width / 3,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                foregroundColor: Colors.black),
                            child: Text("Share profile"),
                          )),
                    ),
                    SizedBox(
                        width: screenSize.width / 7,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200]),
                          child: Center(
                              child: Icon(
                                Icons.person_add_outlined,
                                color: Colors.black,
                              )),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  spacing: 10,
                  children: [
                    SizedBox(
                      width: 1,
                    ),
                    Column(
                      spacing: 3,
                      children: [
                        CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/image/aloneMen.jpeg"),
                          radius: 38,
                        ),
                        const Text("Highlights")
                      ],
                    ),
                    Column(
                      spacing: 3,
                      children: [
                        CustomCircleAvatar(
                          radius: 38,
                          child: Center(child: Icon(Icons.add)),
                        ),
                        Text("New")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Expanded(
                    child: SizedBox(
                      width: screenSize.width / 3,
                      child: ElevatedButton(

                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(),backgroundColor: Colors.white),
                        child: SvgPicture.asset("assets/icon/grid-nine.svg",fit: BoxFit.cover,width: 45,height: 45,),
                        onPressed: () {
                          _pageController.animateToPage(0, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: screenSize.width / 3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(),backgroundColor: Colors.white),
                        child: Icon(Icons.person_pin_outlined,size: 45,color: Colors.black,),
                        onPressed: () {
                          _pageController.animateToPage(1, duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                        },
                      ),
                    ),
                  ),
                ],),
                SizedBox(
                  width: screenSize.width,
                  height: screenSize.height /2,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      ImageVideoPage(),
                      TagPage(),
                    ],
                  )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
