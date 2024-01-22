import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/theme.dart';

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
          backgroundColor: lightColorScheme.inversePrimary,
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
        backgroundColor: lightColorScheme.background,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 350,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 400,
                    height: 100,
                    child: Card(
                      elevation: 10,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            controller: messageController,
                            maxLines:
                                null, // Set maxLines to null for multiline input
                            decoration: InputDecoration(
                                hintText: "Write message here",
                                hintStyle: TextStyle(
                                    color: lightColorScheme.tertiary)),
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
