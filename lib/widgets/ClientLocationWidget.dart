import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/theme.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightColorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 150,
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
              children: [
                CircleAvatar(
                  backgroundImage: Image.asset(
                    "assets/images/pune.jpg",
                  ).image,
                  maxRadius: 18,
                ),
                Text("Pune", style: TextStyle(fontSize: 14)),
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
                  maxRadius: 18,
                ),
                Text(
                  "Mumbai",
                  style: TextStyle(fontSize: 14),
                ),
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
                  maxRadius: 18,
                ),
                Text("Hydrabad", style: TextStyle(fontSize: 14)),
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
                  maxRadius: 18,
                ),
                Text("Kolkata", style: TextStyle(fontSize: 14)),
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
                  maxRadius: 18,
                ),
                Text("Delhi", style: TextStyle(fontSize: 14)),
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
                  maxRadius: 18,
                ),
                Text("Banglore", style: TextStyle(fontSize: 14)),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
