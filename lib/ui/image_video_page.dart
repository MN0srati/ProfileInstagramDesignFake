import 'package:flutter/material.dart';

class ImageVideoPage extends StatelessWidget {
  const ImageVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    var x=0;
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: List.generate(2, (index1) {
            Row myRow=Row(
              children: List.generate(
                  3,
                      (index2) {
                    if (index1 == 1 && index2 == 2) return Text("");
                    x++;
                    return SizedBox(
                      width: screenSize.width / 3,
                      height: 150,
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/image/0${x==2 ? "$x.jpeg" : "$x.jpg"}")),
                    );

                  }
              ),
            );

            return myRow;
          }),
        ),
      ),);
  }
}
