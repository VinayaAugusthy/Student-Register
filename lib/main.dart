import 'package:flutter/material.dart';
import 'package:student_registration/utils/constants/colors.dart';
import 'package:student_registration/views/details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: primaryColor),
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        primarySwatch: Colors.pink,
        useMaterial3: true,
      ),
      home: const DetailsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
