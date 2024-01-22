import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/view/clientHomePage.dart';

class UserLoginPage extends StatefulWidget {
  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController professionController = TextEditingController();

  File?
      image; // Placeholder for user image, you'll need to implement image handling.

  bool isSigningUp =
      false; // Track whether the user is signing up or logging in.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isSigningUp ? 'User Signup' : 'User Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (isSigningUp)
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
            SizedBox(height: 16),
            if (isSigningUp)
              TextFormField(
                controller: ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
            SizedBox(height: 16),
            TextFormField(
              controller: locationController,
              decoration: InputDecoration(labelText: 'Location'),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            if (isSigningUp)
              TextFormField(
                controller: professionController,
                decoration: InputDecoration(labelText: 'Profession'),
              ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Perform login or signup logic here
                String name = nameController.text;
                int age =
                    isSigningUp ? int.tryParse(ageController.text) ?? 0 : 0;
                String location = locationController.text;
                String phone = phoneController.text;
                String profession =
                    isSigningUp ? professionController.text : '';

                // You can use these values for your login or signup logic.
                if (isSigningUp) {
                  print(
                      'Signup - Name: $name, Age: $age, Location: $location, Phone: $phone, Profession: $profession');
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ClientHomePage()));
                  print('Login - Location: $location, Phone: $phone');
                }
              },
              child: Text(isSigningUp ? 'Signup' : 'Login'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                setState(() {
                  isSigningUp = !isSigningUp;
                });
              },
              child: Text(isSigningUp
                  ? 'Already have an account? Login'
                  : 'Don\'t have an account? Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
