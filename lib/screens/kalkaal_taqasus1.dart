
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class Taqasus1 extends StatefulWidget {
  const Taqasus1({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus1State createState() => _Taqasus1State();
}

class _Taqasus1State extends State<Taqasus1> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/kjkhvHC.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Abdalla jama ali",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "kalkaal Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "cardiology",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}


class Taqasus2 extends StatefulWidget {
  const Taqasus2({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus2State createState() => _Taqasus2State();
}

class _Taqasus2State extends State<Taqasus2> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/AwoVH5U.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr hassan abdi raage",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "kalkaal Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "cardiology",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}



class Taqasus3 extends StatefulWidget {
  const Taqasus3({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus3State createState() => _Taqasus3State();
}

class _Taqasus3State extends State<Taqasus3> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/340mjQe.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Ahmed Abdi ali",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "kalkaal Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Therapist",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}



class Taqasus4 extends StatefulWidget {
  const Taqasus4({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus4State createState() => _Taqasus4State();
}

class _Taqasus4State extends State<Taqasus4> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/aMF9HC7.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Anas ahmed ali",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Somali Sudanese Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "kidney",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}



class Taqasus5 extends StatefulWidget {
  const Taqasus5({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus5State createState() => _Taqasus5State();
}

class _Taqasus5State extends State<Taqasus5> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/zETga57.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Abdi khadar farah",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Somali Sudanese Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "dermtology",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:9",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}

class Taqasus6 extends StatefulWidget {
  const Taqasus6({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus6State createState() => _Taqasus6State();
}

class _Taqasus6State extends State<Taqasus6> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/HECpn1R.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr kaafiso abdi ahmed",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Somali Sudanese Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Gynecology",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:7",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}

class Taqasus7 extends StatefulWidget {
  const Taqasus7({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus7State createState() => _Taqasus7State();
}

class _Taqasus7State extends State<Taqasus7> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/zETga57.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Abdirizak farah",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Al ihsaan Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "pedaitric",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}

class Taqasus8 extends StatefulWidget {
  const Taqasus8({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus8State createState() => _Taqasus8State();
}

class _Taqasus8State extends State<Taqasus8> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/zETga57.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr Anas ahmed ali",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Al ihsaan Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Ent",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}



class Taqasus9 extends StatefulWidget {
  const Taqasus9({Key? key}) : super(key: key);

  static const String id = 'DoctorsListScreen';


  @override
  _Taqasus9State createState() => _Taqasus9State();
}

class _Taqasus9State extends State<Taqasus9> {
  // final MyController c = Get.put(MyController());

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
                            child: CachedNetworkImage(
                              imageUrl:  "https://i.imgur.com/Mq5PLV7.jpg",
                              fit: BoxFit.cover,
                            ),
                          )
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
                                  "Dr ahmed ali",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Al ihsaan Hospital",
                                  style: TextStyle(fontSize: 16, color: Colors.blue),
                                  textAlign: TextAlign.end,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "internal medecing",
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
                                      "Exp: 5 years",
                                      style: TextStyle(fontSize: 14, color: Colors.black54),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(right: 80),
                                      child: Text(
                                        "Fee:8",
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





                            // const SizedBox(height: 5),
                            // Container(
                            //   width: double.infinity,
                            //   child: Row(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Text(
                            //         doctor.location,
                            //         style: TextStyle(fontSize: 16, color: Colors.blue),
                            //         textAlign: TextAlign.end,
                            //       ),
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
                            // const SizedBox(height: 4),
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
    );
  }
}









