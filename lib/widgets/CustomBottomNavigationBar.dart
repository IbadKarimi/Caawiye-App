


import 'package:caawiye_app/screens/AddHospital.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';



class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  int index=0;
  Widget build(BuildContext context) {
    return  BottomNavigationBar(

        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: Colors.amber, // <-- This works for fixed
        selectedItemColor:  Colors.black,
        unselectedItemColor: Colors.black,


        currentIndex: index,
        onTap: (int index) { setState((){
          this.index = index;
          if(index==0){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AddHospital();
            }));
          }



        }); },

        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.black,),
            label: 'Hospital',
          ),












        ]);
  }
}
