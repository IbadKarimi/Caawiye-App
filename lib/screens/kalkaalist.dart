
import 'dart:convert';
import 'package:caawiye_app/screens/AddHospital.dart';
import 'package:caawiye_app/widgets/catogorywidget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../models/HospitalModel.dart';
import '../widgets/hospitals_list_widgets.dart';
import 'doctor_list.dart';
import 'taqasusyada_kalkaal.dart';

class kalkaalHospitals extends StatefulWidget {
  const kalkaalHospitals({Key? key}) : super(key: key);

  static const String id = 'HospitalsList2';


  @override
  _kalkaalHospitalsState createState() => _kalkaalHospitalsState();
}

class _kalkaalHospitalsState extends State<kalkaalHospitals> {

  List<HospitalModel> hospitalList = [];


  List<dynamic> data=[];
  var networkImage;
  Future<List<dynamic>> fetchHospitalData() async {
    var response = await http.get(Uri.parse('http://192.168.1.6:8080/Hospital/GetHospitalData.php'));

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

        backgroundColor: Color(0xfff5f9ff),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Hospital List'),
          actions: [
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
        body: Column(
          children: [


            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Material(
                color: Colors.white,

                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Get.to(taqasusyadadaKalkaal());
                  },
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 90,
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.grey, width: 2),

                      borderRadius: BorderRadius.circular(10),


                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey,
                            //     blurRadius: 1,
                            //     spreadRadius: 1,
                            //     offset: Offset(2,2),
                            //   ),
                            // ],
                          ),

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: 'https://i.imgur.com/TleCICb.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),


                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Text(
                                'Kalkaal Hospital',
                                style: GoogleFonts.poppins(
                                  fontSize: 20, fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,color: Colors.blue,size: 20,
                                  ),
                                  Text(
                                    "Wadada Digfeer,Mog Somalia",style: GoogleFonts.poppins(fontSize: 11,color: Colors.blue),

                                    textAlign: TextAlign.start,
                                  ),
                                ],

                              ),
                              // Row(
                              //   children: [
                              //     Icon(
                              //       Icons.location_on,color: Colors.blue,
                              //     ),
                              //     Text(
                              //     'Banaadir, Mog-Somalia',
                              //     style: GoogleFonts.poppins(fontSize: 14, color: Colors.blue),
                              //     overflow: TextOverflow.ellipsis,
                              //     maxLines: 2,
                              //   ),
                              //   ]
                              // ),
                              const SizedBox(height: 5),
                              // Container(
                              //   width: double.infinity,
                              //   child: Row(
                              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //     children: [
                              //       IconButton(
                              //         onPressed: () {},
                              //         icon: Icon(
                              //           Icons.health_and_safety,
                              //           color: Colors.red,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              const SizedBox(height: 4),
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
            const SizedBox(height: 10),

            Material(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Get.to(somaliSudanes1());
                },
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey, width: 2),

                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     blurRadius: 1,
                          //     spreadRadius: 1,
                          //     offset: Offset(2,2),
                          //   ),
                          // ],
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: 'https://i.imgur.com/Nak8agj.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),


                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              'Somali Sudanese Hospital',
                              style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,color: Colors.blue,size: 20,
                                ),
                                Text(
                                  "Wadada Digfeer,Mog Somalia",style: GoogleFonts.poppins(fontSize: 11,color: Colors.blue),

                                  textAlign: TextAlign.start,
                                ),
                              ],

                            ),
                            const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       IconButton(
                            //         onPressed: () {},
                            //         icon: Icon(
                            //           Icons.health_and_safety,
                            //           color: Colors.red,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Material(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Get.to(Alihsaan3());
                },
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey, width: 2),

                    borderRadius: BorderRadius.circular(10),


                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     blurRadius: 1,
                          //     spreadRadius: 1,
                          //     offset: Offset(2,2),
                          //   ),
                          // ],
                        ),

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            imageUrl: 'https://i.imgur.com/NhQqReb.png',
                            fit: BoxFit.cover,
                          ),
                        ),


                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Text(
                              'Al Ihsaan Hospital',
                              style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,color: Colors.blue,size: 20,
                                ),
                                Text(
                                  "Wadada Kbb,Mog Somalia",style: GoogleFonts.poppins(fontSize: 11,color: Colors.blue),

                                  textAlign: TextAlign.start,
                                ),
                              ],

                            ),
                            const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       IconButton(
                            //         onPressed: () {},
                            //         icon: Icon(
                            //           Icons.health_and_safety,
                            //           color: Colors.red,
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),
                            const SizedBox(height: 4),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
            ),
            //----------------------Heres My code my Start
            for (var item in data)
              Column(children: [
                const SizedBox(height: 10,),
                Material(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Get.to(Alihsaan3());
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.grey, width: 2),

                        borderRadius: BorderRadius.circular(10),


                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(10),
                              // boxShadow: [
                              //   BoxShadow(
                              //     color: Colors.grey,
                              //     blurRadius: 1,
                              //     spreadRadius: 1,
                              //     offset: Offset(2,2),
                              //   ),
                              // ],
                            ),

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network("http://192.168.1.6:8080/Hospital/"+item['imageName']),
                            ),


                          ),

                          const SizedBox(width: 15),
                        Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                Text(
                                  item['hospitalName'],
                                  style: GoogleFonts.poppins(
                                    fontSize: 20, fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,color: Colors.blue,size: 20,
                                    ),
                                    Text(
                                      item['address']+","+item['city'],style: GoogleFonts.poppins(fontSize: 11,color: Colors.blue),

                                      textAlign: TextAlign.start,
                                    ),
                                  ],

                                ),
                                const SizedBox(height: 5),
                                // Container(
                                //   width: double.infinity,
                                //   child: Row(
                                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       IconButton(
                                //         onPressed: () {},
                                //         icon: Icon(
                                //           Icons.health_and_safety,
                                //           color: Colors.red,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                const SizedBox(height: 4),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ),
                ),

              ],),




          ],
        ),


        floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(context, MaterialPageRoute(builder: (context){
            return HospitalList();
          }));
    },
    child: Icon(Icons.add), // Icon to be displayed on the button
    backgroundColor: Colors.blue, // Background color of the button
    ),


    );
  }
}
