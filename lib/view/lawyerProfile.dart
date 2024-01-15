import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Color(0xFFE6F7FF),
      appBar: AppBar(
        title: Text("Lawyer Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 130,
                      child: Text("Image"),
                    ),
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
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text("$label: ",
              style: Theme.of(context).textTheme.titleLarge!.copyWith()),
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
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Text("Total Cases Handled: ",
              style: Theme.of(context).textTheme.titleLarge!.copyWith()),
          SizedBox(width: 8),
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
              "Handled: ${_casesHandledController.text}, Succeeded: ${_casesSucceededController.text}",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
            ),
          ),
        ],
      ),
    );
  }
}
