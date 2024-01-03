import 'dart:html';

class Client {
  Client({
    required this.name,
    required this.age,
    required this.location,
    required this.phone,
    required this.image,
    required this.profession,



  });

  final String name;
  final int age;
  final String location;
  final BigInt phone;
  final File image;
  final String profession;
}
