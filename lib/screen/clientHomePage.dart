import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/screen/clientMessagePage.dart';
import 'package:lawyer_app_google_solutions/screen/clientProfile.dart';

class ClientHomePage extends StatelessWidget {
  const ClientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active)),
        ],
      ),
      body: Column(
        children: [
          Container(

          )
        ],
      ),

    );
  }
}
