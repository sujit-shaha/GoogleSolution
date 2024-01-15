import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/models/lawyer.dart';

import '../view/lawyerDetails.dart';

class LawyerCardClientSide extends StatelessWidget {
   LawyerCardClientSide({super.key,required this.lawyer});
   Lawyer lawyer;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LawyerProfileScreen(lawyer: lawyer,)));
      },
      child: Card(
        elevation: 2, // Add some elevation for a lifted effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Soften edges with rounded corners
        ),
        margin: EdgeInsets.all(6), // Add spacing around the card
        child: Padding(
          padding: EdgeInsets.all(10), // Create inner padding for content
          child: Row(
            children: [
              CircleAvatar(
                radius: 30, // Adjust avatar size
                backgroundColor: Colors.blue[200], // Use a lighter shade of blue
                child: Text(
                  'image',
                  style: TextStyle(color: Colors.blue[800]), // Darker text for contrast
                ),
              ),
              SizedBox(width: 15), // Add spacing between avatar and text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
                  children: [
                    Text(
                      lawyer.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      lawyer.domain,
                      style: TextStyle(color: Colors.grey), // Use grey for less emphasis
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Total Cases: ${lawyer.totalCases}',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
