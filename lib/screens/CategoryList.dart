
import 'package:caawiye_app/screens/AddCategory.dart';
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
  String hospitalName;
  HospitalDepartments({required this.hospitalId,required this.hospitalName});

  @override
  State<HospitalDepartments> createState() => _HospitalDepartments();
}

class _HospitalDepartments extends State<HospitalDepartments> {
  String? _hospitalId;

  List<dynamic> data=[];
  var networkImage;
  Future<List<dynamic>> fetchCategoryData() async {
    var response1 = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetCategoryDataWithHId.php?hospitalId=${widget.hospitalId}'));
    // var response = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetCategoryData.php'));

    if (response1.statusCode == 200) {
      // Parse the response body as a list of dynamic objects
      data =await jsonDecode(response1.body);
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
      throw Exception('Failed to load data from the API. Status code: ${response1.statusCode}');
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
    // _hospitalId = int.parse(widget.hospitalId) as String?;
    print("Hospital Id is :"+widget.hospitalId);
    print("Hospital Name is :"+widget.hospitalName);

    fetchHospitalData();
    fetchCategoryData();

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
                    for (var item in hospitalData)
                      "http://192.168.1.6:8080/Hospital/${item['imageName']}",
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

            height:MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
                padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                child:





                /*  Category10(),
                        Category11(),
                        Category12(),*/
                // category starts here

                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // Number of columns in the grid
                    crossAxisSpacing: 20.0, // Spacing between columns
                    mainAxisSpacing: 5.0, // Spacing between rows
                  ),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    // You can check the type of the item and customize the widget accordingly
                    dynamic item;
                    dynamic categoryName;
                    dynamic id;

                    item = data[index]['imageName'];
                    categoryName = data[index]['categoryName'];
                    id = data[index]['id'];

                    return id==null ? Container():
                    InkWell(
                      onTap: () {
                        print("Hospital Name is ===============?"+widget.hospitalName);
                       Get.to(()=>DoctorList(hospitalName: widget.hospitalName, categoryId: id));// only need category id here

                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.blue.shade50),
                          ),
                          padding: EdgeInsets.all(10),
                          child:
                          Column(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    color: Colors.blue,
                                    child: Image.network("http://192.168.1.6:8080/Hospital/" + item),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 7),
                              Center(
                                child: Text(
                                  categoryName,
                                  style: TextStyle(fontSize: 12, color: Colors.black),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),

                            ],
                          )

                      ),
                    );
                  },

                )




            ),


          ),




        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return AddCategory(hospitalId:widget.hospitalId, hospitalName: widget.hospitalName);
          }));
        },
        child: Icon(Icons.add), // Icon to be displayed on the button
        backgroundColor: Colors.blue, // Background color of the button
      ),
    );
  }
}
