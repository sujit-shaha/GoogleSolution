import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:lawyer_app_google_solutions/firebase_options.dart';
import 'package:lawyer_app_google_solutions/navBar.dart';
import 'package:lawyer_app_google_solutions/view/clientAuthentication.dart';
import 'package:lawyer_app_google_solutions/view/clientHomePage.dart';
import 'package:lawyer_app_google_solutions/view/clientProfile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawyer_app_google_solutions/view/lawyerHomePage.dart';
import 'package:lawyer_app_google_solutions/view/lawyerProfile.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'controls/auth.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 102, 6, 247),
  background: const Color.fromARGB(255, 56, 49, 66),
);

final theme = ThemeData().copyWith(
  useMaterial3: true,
  scaffoldBackgroundColor: colorScheme.background,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.ubuntuCondensedTextTheme().copyWith(
    titleSmall: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.ubuntuCondensed(
      fontWeight: FontWeight.bold,
    ),
  ),
);
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        hintColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.lightBlue,
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) { return MainScreen(); },),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Main screen"),
          ),
          body: Center(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LowyerProfile()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => LawyerProfile()));
                    },
                    child: Text("Lawyer Profile")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ClientProfile()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => ClientProfile()));
                    },
                    child: Text("Client Profile")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NavBar()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => ClientProfile()));
                    },
                    child: Text("Client HomePage")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  UserLoginPage()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => ClientProfile()));
                    },
                    child: Text("Authentication Page")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  LawyerHomeScreen()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => ClientProfile()));
                    },
                    child: Text("Lawyer Home page")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const  AuthScreen()),
                      );
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (ctx) => ClientProfile()));
                    },
                    child: Text("Auth Screen")),
              ],
            ),
          ),
        ));
  }
}
