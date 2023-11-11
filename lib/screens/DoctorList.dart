

import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;

import 'AddDoctor.dart';
import 'HospitalList.dart';



class DoctorList extends StatefulWidget {
 String hospitalName;
 String categoryId;

 DoctorList({required this.hospitalName,required this.categoryId});

  //static const String id = 'DoctorsListScreen';


  @override
  _DoctorList createState() => _DoctorList();
}

class _DoctorList extends State<DoctorList> {
  // final MyController c = Get.put(MyController());
  List<dynamic> data=[];
  var networkImage;
  Future<List<dynamic>> fetchDoctorData() async {
    var response = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetDoctorData.php'));

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

  List<dynamic> hospitalData=[];
// coursel image get from here
  Future<List<dynamic>> fetchHospitalData() async {
    var response = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetHospitalData.php'));

    if (response.statusCode == 200) {
      // Parse the response body as a list of dynamic objects
      hospitalData =await jsonDecode(response.body);
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
    fetchDoctorData();
    fetchHospitalData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f9ff),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Dalbo Dhaqtarka',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600) ),
        centerTitle: true,

        actions: [
          IconButton(
            onPressed: () {
              Get.to(()=>kalkaalHospitals());
            },
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for(var item in data)
              if(item["categoryId"]==widget.categoryId)

            Column(


              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Material(
                    color: Colors.brown.shade50,
                    borderRadius: BorderRadius.circular(40),
                    child: InkWell(
                      // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)
                      //   => DoctorScreen(doctor: doctor,),
                      //
                      // )),
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 95,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                width: 90,
                                height: 80,
                                decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.network("http://192.168.1.6:8080/Hospital/"+item['imageName'],fit: BoxFit.cover,),
                                ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['fullName'],
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        item['hospitalName'],
                                        style: TextStyle(fontSize: 16, color: Colors.blue),
                                        textAlign: TextAlign.end,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        item['specialization'],
                                        style: TextStyle(fontSize: 15),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                      ),
                                      const SizedBox(height: 5,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Exp:"+item['experience'],
                                            style: TextStyle(fontSize: 14, color: Colors.black54),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(right: 80),
                                            child: Text(
                                              "Fee:"+item['fee'],
                                              style: TextStyle(fontSize: 14,  color: Colors.black54),
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                            ),
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(right: 10),
                                            child: Icon(
                                              Icons.video_call, color: Colors.blue,
                                            ),
                                          )

                                        ],
                                      ),
                                    ],
                                  ),






                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hospital Name is +++++++++++++++++++"+widget.hospitalName.toString());


          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Doctor(categoryId:widget.categoryId, hospitalName: widget.hospitalName.toString());
          }));
        },
        child: Icon(Icons.add), // Icon to be displayed on the button
        backgroundColor: Colors.blue, // Background color of the button

      ),
    );
  }
}


