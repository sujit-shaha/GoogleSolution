import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 170,
        width: double.infinity,
        child: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.5,
            mainAxisSpacing: 10,
          ),
          children: [
            GestureDetector(
              child: Column(
                children: [CircleAvatar(
                      backgroundImage: Image.asset(
                        "assets/images/pune.jpg",
                      ).image,
                      maxRadius: 25,
                    ),

                  Text("Pune"),
                ],
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/images/mumbai.jpg",
                    ).image,
                    maxRadius: 25,
                  ),
                  Text("Mumbai"),
                ],
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/images/hydrabad.jpg",
                    ).image,
                    maxRadius: 25,
                  ),
                  Text("HydraBad"),
                ],
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/images/kolkata.jpg",
                    ).image,
                    maxRadius: 25,
                  ),
                  Text("Kolkata"),
                ],
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/images/delhi.png",
                    ).image,
                    maxRadius: 25,
                  ),
                  Text("Delhi"),
                ],
              ),
              onTap: () {},
            ),
            GestureDetector(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: Image.asset(
                      "assets/images/Banglore.png",
                    ).image,
                    maxRadius: 25,
                  ),
                  Text("Banglore"),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),

    );
  }
}
