import 'package:flutter/material.dart';
import 'package:contact_book_app/home_view2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact App',
      theme: ThemeData(iconTheme: const IconThemeData(color: Colors.black)),
      home: HomeView2(),
    );
  }
}
