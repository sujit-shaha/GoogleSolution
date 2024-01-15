import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/main.dart';
import 'package:lawyer_app_google_solutions/models/lawyer.dart';
import 'package:lawyer_app_google_solutions/view/clientMessagePage.dart';
import 'package:lawyer_app_google_solutions/view/clientProfile.dart';
import 'package:lawyer_app_google_solutions/widgets/ClientLocationWidget.dart';
import 'package:lawyer_app_google_solutions/widgets/clientDrawer.dart';
import 'package:lawyer_app_google_solutions/widgets/lawyerCardClientSide.dart';
import '';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key});

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  var filterChecker = false;
  bool _isSelected = false;
  final List<Lawyer> dummyLawyers = [
    Lawyer(
      name: 'Sophie Johnson',
      age: 42,
      location: 'Chicago, IL',
      phone: '+9876543210',
      qualification: 'LL.M. in Employment Law',
      barCouncilId: 'IL876543',
      totalCases: 110,
      totalSuccess: 95,
      domain: 'Employment Law',
    ),
    Lawyer(
      name: 'Carlos Rodriguez',
      age: 38,
      location: 'Los Angeles, CA',
      phone: '+1234567891',
      qualification: 'J.D. in Criminal Law',
      barCouncilId: 'CA123456',
      totalCases: 80,
      totalSuccess: 70,
      domain: 'Criminal Law',
    ),
    Lawyer(
      name: 'Aisha Malik',
      age: 35,
      location: 'Houston, TX',
      phone: '+8329876543',
      qualification: 'LL.B. in Real Estate Law',
      barCouncilId: 'TX765432',
      totalCases: 120,
      totalSuccess: 105,
      domain: 'Real Estate Law',
    ),
    // ... 27 more lawyers with similarly diverse details
    Lawyer(
      name: 'Ravi Singh',
      age: 41,
      location: 'New Delhi, India',
      phone: '+911234567890',
      qualification: 'LL.M. in International Law',
      barCouncilId: 'IN876543',
      totalCases: 95,
      totalSuccess: 80,
      domain: 'International Law',
    ),
    Lawyer(
      name: 'Emily White',
      age: 37,
      location: 'Toronto, Canada',
      phone: '+14165551234',
      qualification: 'J.D. in Human Rights Law',
      barCouncilId: 'CA567890',
      totalCases: 120,
      totalSuccess: 105,
      domain: 'Human Rights Law',
    ),
    Lawyer(
      name: 'Mateo Fernandez',
      age: 40,
      location: 'Buenos Aires, Argentina',
      phone: '+541112223344',
      qualification: 'LL.B. in Maritime Law',
      barCouncilId: 'AR112233',
      totalCases: 85,
      totalSuccess: 70,
      domain: 'Maritime Law',
    ),
    // ... 9 more lawyers with similarly diverse details
  ];

  List<String> city = [
    "Pune",
    "Mumbai",
    "Delhi",
    "Kolkata",
    "Banglore",
    "Hyderabad"
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: ClientDrawer(),
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_active)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                leading: Icon(Icons.search),
                hintText: "Search",
                onSubmitted: (value) {},
              ),
            ),
            SizedBox(height: 5,),
            LocationWidget(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),

                  ],
                ),
                height:screenHeight*0.52,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: dummyLawyers.length,
                    itemBuilder: (context, index) {
                      return LawyerCardClientSide(
                        lawyer: dummyLawyers[index],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
