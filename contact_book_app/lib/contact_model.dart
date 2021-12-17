// To parse this JSON data, do
//
//     final contact = contactFromJson(jsonString);

import 'dart:convert';

// ignore: unused_import
import 'dart:ui';

Contact contactFromJson(String str) => Contact.fromJson(json.decode(str));

String contactToJson(Contact data) => json.encode(data.toJson());

class Contact {
  Contact({
    required this.name,
    required this.phone,
    required this.email,
    required this.country,
    required this.region, picture,
  });

  String name;
  String phone;
  String email;
  String country;
  String region;

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        country: json["country"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": phone,
        "email": email,
        "country": country,
        "region": region,
      };
}
