
import 'package:caawiye_app/screens/AddDoctor.dart';
import 'package:caawiye_app/widgets/cart10.dart';
import 'package:caawiye_app/widgets/cart11.dart';
import 'package:caawiye_app/widgets/cart12.dart';
import 'package:caawiye_app/widgets/cart3.dart';
import 'package:caawiye_app/widgets/cart6.dart';
import 'package:caawiye_app/widgets/cat2.dart';
import 'package:caawiye_app/widgets/home_carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/cart5.dart';
import '../widgets/cat4.dart';
import '../widgets/catogorywidget.dart';
class taqasusyadadaKalkaal extends StatefulWidget {
  const taqasusyadadaKalkaal({super.key});

  @override
  State<taqasusyadadaKalkaal> createState() => _taqasusyadadaKalkaalState();
}

class _taqasusyadadaKalkaalState extends State<taqasusyadadaKalkaal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0, ),
            child: Stack(
              children: [
              HomeCarousel(
                images: [
                  'https://i.imgur.com/Q7IxnQD.png',
                  'https://i.imgur.com/6qgdV42.png',
                  'https://i.imgur.com/tSYmKvQ.png',
                  'https://i.imgur.com/TunJzZJ.png',



                ],
              ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Positioned(
                    top: MediaQuery.of(context).padding.top,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [

                          //back
                          IconButton(
                            onPressed: ()
                            {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
            ],
            ),


          ),
          Row(

            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.blue
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding( padding: EdgeInsets.only(left: 40) ,child: Text("13 Taqasus",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    Padding(padding: EdgeInsets.only(right: 40) ,child: Text("27 Dhaqtar",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(

            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Category(),
                        Category1(),
                        Category2(),

                      ],
                    ),


                  ]
              ),
            ),


          ),
        ],
      ),
    );
  }
}

class somaliSudanes1 extends StatefulWidget {
  const somaliSudanes1({super.key});

  @override
  State<somaliSudanes1> createState() => _somaliSudanes1State();
}

class _somaliSudanes1State extends State<somaliSudanes1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0, ),
            child: Stack(
              children: [
                HomeCarousel(
                  images: [
                    'https://i.imgur.com/Q7IxnQD.png',
                    'https://i.imgur.com/6qgdV42.png',
                    'https://i.imgur.com/tSYmKvQ.png',
                    'https://i.imgur.com/TunJzZJ.png',



                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Positioned(
                    top: MediaQuery.of(context).padding.top,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [

                          //back
                          IconButton(
                            onPressed: ()
                            {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),


          ),
          Row(

            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding( padding: EdgeInsets.only(left: 40) ,child: Text("13 Taqasus",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    Padding(padding: EdgeInsets.only(right: 40) ,child: Text("27 Dhaqtar",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(

            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Category4(),
                        Category5(),
                        Category6(),

                      ],
                    ),

                  ]
              ),
            ),


          ),
        ],
      ),
    );
  }
}



class Alihsaan3 extends StatefulWidget {
  const Alihsaan3({super.key});

  @override
  State<Alihsaan3> createState() => _Alihsaan3State();
}

class _Alihsaan3State extends State<Alihsaan3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 0, ),
            child: Stack(
              children: [
                HomeCarousel(
                  images: [
                    'https://i.imgur.com/Q7IxnQD.png',
                    'https://i.imgur.com/6qgdV42.png',
                    'https://i.imgur.com/tSYmKvQ.png',
                    'https://i.imgur.com/TunJzZJ.png',



                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Positioned(
                    top: MediaQuery.of(context).padding.top,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [

                          //back
                          IconButton(
                            onPressed: ()
                            {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),


          ),
          Row(

            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding( padding: EdgeInsets.only(left: 40) ,child: Text("13 Taqasus",style: TextStyle(color: Colors.white,fontSize: 18),)),
                    Padding(padding: EdgeInsets.only(right: 40) ,child: Text("27 Dhaqtar",style: TextStyle(color: Colors.white,fontSize: 18),)),
                  ],
                ),
              ),

            ],
          ),
          SizedBox(

            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Category10(),
                        Category11(),
                        Category12(),

                      ],
                    ),

                  ]
              ),
            ),


          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Doctor(categoryId: '',hospitalName: "",);
          }));
        },
        child: Icon(Icons.add), // Icon to be displayed on the button
        backgroundColor: Colors.blue, // Background color of the button
      ),
    );
  }
}

