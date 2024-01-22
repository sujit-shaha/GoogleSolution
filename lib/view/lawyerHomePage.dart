import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/theme.dart';
import 'package:lawyer_app_google_solutions/view/acceptedCases.dart';
import 'package:lawyer_app_google_solutions/view/lawyerProfile.dart';

class LawyerHomeScreen extends StatelessWidget {
  const LawyerHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hello Lawyer!',
          style: Theme.of(context).textTheme.headline5,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildProfileCard(context),
            SizedBox(height: 20),
            _buildAcceptedCases(context),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingActionButton(
                  foregroundColor: lightColorScheme.tertiary,
                  backgroundColor: lightColorScheme.secondary,
                  onPressed: () {},
                  child: Icon(Icons.message_outlined),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => LowyerProfile(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: lightColorScheme.inversePrimary,
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 60,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' Name',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 5),
                  Text(
                    ' About',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 5),
                      Text('Location',
                          style: Theme.of(context).textTheme.subtitle1),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCaseCard(BuildContext context, String clientName,
      String caseTitle, String description) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => OngoingCaseDetailScreen(
                clientName: 'Name',
                caseTitle: "Case Title",
                description: 'About kjsh jncjn cndujs uhcuo oqncu'),
          ),
        );
      },
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    clientName,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(height: 5),
                  Text(
                    caseTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAcceptedCases(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: lightColorScheme.inversePrimary,
      ),
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Accepted Cases",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white),
            ),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
            _buildCaseCard(context, 'Client Name', 'Case Title', 'Description'),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
