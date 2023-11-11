
import 'package:caawiye_app/screens/AddDoctor.dart';
import 'package:caawiye_app/screens/AddHospital.dart';
import 'package:caawiye_app/screens/CategoryList.dart';
import 'package:caawiye_app/screens/DoctorList.dart';
import 'package:caawiye_app/screens/homepages.dart';
import 'package:caawiye_app/screens/HospitalList.dart';
import 'package:caawiye_app/screens/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Caawiye App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      home: kalkaalHospitals(),
      routes: {

        splash.id: (_) => splash(),
        // DoctorsListScreen.id: (_) => DoctorsListScreen(),
      },
    );
  }
}

