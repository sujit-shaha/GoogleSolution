import 'dart:html';

class Lawyer {
  Lawyer({
    required this.name,
    required this.age,
    required this.location,
    required this.phone,
    required this.image,
    required this.qualification,
    required this.barCouncilId,
    required this.totalCases,
    required this.totalSuccess,
    required this.domain,


  });

  final String name;
  final int age;
  final String location;
  final BigInt phone;
  final File image;
  final String qualification;
  final String barCouncilId;
  final int totalCases;
  final int totalSuccess;
  final String domain;
}
