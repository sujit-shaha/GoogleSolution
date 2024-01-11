import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/view/afterRequestScreen.dart';

import '../models/lawyer.dart';

class LawyerProfileScreen extends StatelessWidget {
  final Lawyer lawyer;

  const LawyerProfileScreen({Key? key, required this.lawyer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lawyer.name),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 8, right: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Profile card with image and details
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Profile image with circular reveal animation
                    Hero(
                      tag: lawyer,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.blue[200],
                        // backgroundImage: NetworkImage(lawyer.profilePhoto),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.transparent, Colors.black.withOpacity(0.4)],
                            ),
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      lawyer.name,
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'About',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Qualification: ${lawyer.qualification}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Bar Council ID: ${lawyer.barCouncilId}',
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.location_on, color: Colors.blue),
                        const SizedBox(width: 5),
                        Text(lawyer.location),
                      ],
                    ),
                    // const SizedBox(height: 5),
                    // Text(
                    //   'Phone: ${lawyer.phone}',
                    //   style: const TextStyle(color: Colors.grey),
                    // ),
                    const SizedBox(height: 20),
                    Text(
                      'Domain: ${lawyer.domain}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Total Cases Handled: ${lawyer.totalCases}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Total Successful Cases: ${lawyer.totalSuccess}',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 80,
            ),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AfterRequestScreen()));

            }, child: Text("Send Request"))
            // ... (add more Card widgets as needed)
          ],
        ),
      ),
    );
  }
}
