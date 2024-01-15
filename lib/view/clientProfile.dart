import 'package:flutter/material.dart';

class ClientProfile extends StatefulWidget {
  const ClientProfile({Key? key});

  @override
  _ClientProfileState createState() => _ClientProfileState();
}

class _ClientProfileState extends State<ClientProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _professionController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _govIdController = TextEditingController();

  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6F7FF),
      appBar: AppBar(
        title: const Text("Your Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
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
                  buildCardRow("Name :", _nameController),
                  buildCardRow("Mobile no :", _mobileController),
                  buildCardRow("Location :", _locationController),
                  buildCardRow("Age :", _ageController),
                  buildCardRow("Profession :", _professionController),
                  buildCardRow("email :", _emailController),
                  buildCardRow("Aadhaar Card no :", _govIdController),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      label: Text(_isEditing ? "Save" : "Edit"),
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        setState(() {
                          _isEditing = !_isEditing;
                          if (!_isEditing) {
                            // Save data logic can be added here
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCardRow(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(),
          ),
          SizedBox(width: 15),
          _isEditing
              ? Expanded(
            child: TextFormField(
              controller: controller,
            ),
          )
              : Expanded(
            child: Text(
              controller.text,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
