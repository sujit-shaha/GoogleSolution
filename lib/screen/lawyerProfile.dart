import 'package:flutter/material.dart';

class LawyerProfile extends StatelessWidget {
  const LawyerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Profile"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: CircleAvatar(
                radius: 130,
                child:Text("Lawyer's image"),
              ),
            ),
          ),

          Row(
            children: [
              Text("Name : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User name",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Text("Mobile no : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("Mobile number",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Location : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User  location",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Age : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User age",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Qualification : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User profession",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Total cases handled : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User profession",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Total cases Succeeded : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("User profession",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),Row(
            children: [
              Text("Bar council Id : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("data",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text("Location where ready to work : ",
                  style:Theme.of(context).textTheme.titleLarge!.copyWith()
              ),
              SizedBox(width: 15,),
              Text("data",
                  style:Theme.of(context).textTheme.bodyMedium!.copyWith()
              ),
            ],
          ),

          SizedBox(
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
    );
  }
}
