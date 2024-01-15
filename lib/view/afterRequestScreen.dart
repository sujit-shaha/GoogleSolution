import 'package:flutter/material.dart';

class AfterRequestScreen extends StatefulWidget {
  const AfterRequestScreen({Key? key}) : super(key: key);

  @override
  State<AfterRequestScreen> createState() => _AfterRequestScreenState();
}

class _AfterRequestScreenState extends State<AfterRequestScreen> {
  TextEditingController messageController = TextEditingController();

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check_circle, color: Colors.green, size: 50),
              SizedBox(height: 10),
              Text("Request Sent Successfully!"),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350,
              ),
              Center(
                child: Container(
                  width: 400,
                  height: 100,
                  child: Card(
                    elevation: 30,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: messageController,
                          maxLines: null, // Set maxLines to null for multiline input
                          decoration: InputDecoration(
                            hintText: "Write message here",

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  // Perform actions when button is clicked
                  showSuccessDialog(context);
                },
                child: Text("Send request"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
