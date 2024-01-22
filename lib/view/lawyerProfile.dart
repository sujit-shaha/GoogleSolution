import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/theme.dart';

class LowyerProfile extends StatefulWidget {
  const LowyerProfile({Key? key}) : super(key: key);

  @override
  _LowyerProfileState createState() => _LowyerProfileState();
}

class _LowyerProfileState extends State<LowyerProfile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _domainController = TextEditingController();
  TextEditingController _mobileController = TextEditingController();
  TextEditingController _locationController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _qualificationController = TextEditingController();
  TextEditingController _casesHandledController = TextEditingController();
  TextEditingController _casesSucceededController = TextEditingController();

  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: lightColorScheme.background,
      appBar: AppBar(
        title: Text("Lawyer Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: lightColorScheme.inversePrimary,
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 70,
                        child: Text("Image"),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    _buildTextField("Name", _nameController),
                    _buildTextField("Domain", _domainController),
                    _buildTextField("Mobile no", _mobileController),
                    _buildTextField("Location", _locationController),
                    _buildTextField("Age", _ageController),
                    _buildTextField("Qualification", _qualificationController),
                    _buildCasesHandledField(),
                    const SizedBox(
                      height: 20,
                    ),
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Text("$label: ", style: TextStyle(fontSize: 15)),
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

  Widget _buildCasesHandledField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Text("Total Cases Handled: ", style: TextStyle(fontSize: 15)),
          _isEditing
              ? Expanded(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _casesHandledController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Total Cases Handled",
                        ),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: _casesSucceededController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: "Total Cases Succeeded",
                        ),
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: Text(
                    "Handled: ${_casesHandledController.text} Succeeded: ${_casesSucceededController.text}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                  ),
                ),
        ],
      ),
    );
  }
}
