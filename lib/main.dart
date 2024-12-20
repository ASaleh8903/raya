import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:raya/Shared/app_brain.dart';
import 'on_boarding/on_boarding.dart';


void main() {
  runApp(RayaInstituteApp());
}

class RayaInstituteApp extends StatelessWidget {
  const RayaInstituteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Configure Bottom Navigation Bar theme globally
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          // Set background color
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 20.0,
        ),
        appBarTheme: AppBarTheme(
          titleSpacing: 20.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.green.shade900,
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.green.shade900,
          elevation: 0.0,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      home: OnBoardingScreen(),
    );
  }
}
