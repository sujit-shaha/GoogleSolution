import 'package:flutter/material.dart';

class ClientDrawer extends StatefulWidget {
  const ClientDrawer({super.key});

  @override
  State<ClientDrawer> createState() => _ClientDrawerState();
}

class _ClientDrawerState extends State<ClientDrawer> {
  bool personalinjury=false;
  bool immigration=false;
  bool labour=false;
  bool business=false;
  bool publicinterest=false;
  bool property=false;
  bool other=false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Filters",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onBackground)),
                  ],
                )),
            SwitchListTile(
              value: personalinjury,
              onChanged: (isChecked) {
                setState(() {
                  personalinjury = isChecked;

                });
              },
              title: Text("Personal injury lawyers"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  immigration=isChecked;

                });
              },
              value: immigration,
              title: Text("Immigration"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  labour=isChecked;

                });
              },
              value: labour,
              title: Text("Labor and employment lawyer"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  business=isChecked;

                });
              },
              value: business,
              title: Text("Business attorney"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  publicinterest=isChecked;

                });
              },
              value: publicinterest,
              title: Text("Public interest lawyer"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  property=isChecked;

                });
              },
              value: property,
              title: Text("Intellectual property lawyer"),
            ),
            SwitchListTile(
              onChanged: (isChecked) {
                setState(() {
                  other=isChecked;
                });
              },
              value: other,
              title: Text("Other"),
            ),
          ],
        ));
  }
}
