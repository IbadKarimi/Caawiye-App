import 'dart:io';
import 'package:caawiye_app/screens/homepages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HospitalList.dart';
class splash extends StatefulWidget {
  static const  String id= "splash.id";
  const splash({Key? key}) : super(key: key);

  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 8), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  kalkaalHospitals(),));

    });

  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.blue,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/caawiyebg.png'),

              ),
            const SizedBox(height: 20,),
            if(Platform.isIOS)
              const CupertinoActivityIndicator(
                radius: 20,
              )
            else
              const CircularProgressIndicator(
                color: Colors.white,
              )



          ],
        ),
      ),

    );
  }
}
