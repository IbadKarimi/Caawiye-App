
import 'package:caawiye_app/screens/DoctorList.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import '../widgets/cart10.dart';
import '../widgets/cart11.dart';
import '../widgets/cart12.dart';
import '../widgets/home_carousel.dart';
import 'AddDoctor.dart';
import 'package:http/http.dart' as http;

class HospitalDepartments extends StatefulWidget {
  String hospitalId;
  HospitalDepartments({required this.hospitalId});

  @override
  State<HospitalDepartments> createState() => _HospitalDepartments();
}

class _HospitalDepartments extends State<HospitalDepartments> {
  List<dynamic> data=[];
  var networkImage;
  Future<List<dynamic>> fetchHospitalData() async {
    var response = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetCategoryData.php'));

    if (response.statusCode == 200) {
      // Parse the response body as a list of dynamic objects
      data =await jsonDecode(response.body);
      print(data);
      for (var item in data) {
        setState(() {
          networkImage=item['imageName'];
          print("===========================================");
        });

        for(int i=0;i<data.length;i++)



          print(item['name']);
      }
      return data;

    } else {
      throw Exception('Failed to load data from the API. Status code: ${response.statusCode}');
    }
  }



  void initState(){
    fetchHospitalData();

    super.initState();
  }
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for(var item in data)
                      if(widget.hospitalId==item['hospitalId'])




                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      /*  Category10(),
                        Category11(),
                        Category12(),*/
 // category starts here
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: () {
                           Get.to(()=>DoctorList(hospitalName: "", categoryId: item['id']));

                          },
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.blue.shade50),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),

                                    ),

                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),

                                    ),
                                    child:
                                      Image.network("http://192.168.1.6:8080/Hospital/"+item['imageName']),
                                    )
                                  ),

                                const SizedBox(height: 6),
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      item['categoryName'],
                                      style:TextStyle(fontSize: 12,),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                              ],
                            ),
                          ),
                        ),

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
