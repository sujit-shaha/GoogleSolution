import 'package:flutter/material.dart';

class ClientProfile extends StatelessWidget {
  const ClientProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F7FF),
      appBar: AppBar(
        title: Text("Your Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Card(
                    shape: CircleBorder(),
                    elevation: 5,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              buildCardRow("Name :", "User name", context),
              buildCardRow("Mobile no :", "Mobile number", context),
              buildCardRow("Location :", "User location", context),
              buildCardRow("Age :", "User age", context),
              buildCardRow("Profession :", "User profession", context),
              buildCardRow("email :", "your email", context),
              buildCardRow("Gov Id :", "upload Adhar card id ", context),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton.icon(
                  label: Text("Edit"),
                  icon: Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCardRow(String label, String value, BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(),
            ),
            SizedBox(width: 15),
            Text(
              value,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
            ),
          ],
        ),
      ),
    );
  }
}