import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mango/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.chakraPetchTextTheme(),
      ),
      home: LoginPage(),
    );
  }
}
