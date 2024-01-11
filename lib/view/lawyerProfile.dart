import 'package:flutter/material.dart';

class LowyerProfile extends StatelessWidget {
  const LowyerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6F7FF),
      appBar: AppBar(
        title: Text("Lowyer Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 130,
                    child:Text("image"),
                  ),
                ),
              ),

              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Name: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("User name",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Domain: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("Your domain of expertise",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Mobile no: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("Mobile number",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Location: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("User location",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Age: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("User age",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text("Profession: ",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith()),
                      SizedBox(width: 15),
                      Text("User profession",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Text("Qualification: ",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith()),
                        SizedBox(width: 8),
                        Icon(Icons.picture_as_pdf),
                        SizedBox(width: 12),
                        Text("Upload Bar Council certificate",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith()),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Row(
                      children: [
                        Text("Cases Handled: ",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith()),
                        SizedBox(width: 8),
                        SingleChildScrollView(
                          child: Container(
                            height: 100,
                            width: 200,
                            color: Colors.white30,
                            child: Column(
                              children: [
                                Text("Title of case"),
                                SizedBox(height: 5),
                                Text("Short description"),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),

                  ),

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton.icon(
                    label: Text("Edit"),
                    icon: Icon(Icons.edit),
                    onPressed: (){

                    },

                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}