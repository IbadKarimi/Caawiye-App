


import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:caawiye_app/screens/AddCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

import 'HospitalList.dart';

class AddHospital extends StatefulWidget{


  @override
  State<AddHospital > createState() => _AddHospital ();
}

class _AddHospital  extends State<AddHospital> {
  late int id;
  File? imagePath;
  String? imageName;
  String? imageBytes;
  ImagePicker imagePicker=ImagePicker();

  TextEditingController hospitalNameController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController addressController=TextEditingController();

  Future<void> InsertDataSql(BuildContext context)async{
    try{
      String uri="http://192.168.1.6:8080/Hospital/PostHospital.php";

      var res=await http.post(Uri.parse(uri),body: {
        "imageName":imageName,
        "imageBytes":imageBytes,
        "hospitalName":hospitalNameController.text,
        "city":cityController.text,
        "address":addressController.text,


      });

      var response=jsonDecode(res.body);
      if(response["success"]==true){

        id = response["id"];
        print("==========================> id"+id.toString());


        //Get.to(()=>AddCategory(hospitalId: id.toString(), hospitalName: hospitalNameController.text));
        Get.to(()=>kalkaalHospitals());

        print("Uploaded");
      }else{
        print("Error");
      }

    }catch(e){
      print("Error:"+e.toString());
    }

  }



  Future<void> getImage()async{
    var getImage=await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imagePath=File(getImage!.path);
      imageName=getImage.path.split("/").last;
      imageBytes=base64Encode(imagePath!.readAsBytesSync());
      print("Image Path is "+imagePath.toString());
      print("Image Name is "+imageName.toString());
      print("Image Data is is "+imageBytes.toString());
    });



  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top:30),
                child: Text("Add Hospital Data",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),
              ),),

            SafeArea(
              child: Center(
                child: CupertinoButton(
                  onPressed: (){
                    getImage();
                  },
                  child: CircleAvatar(
                    backgroundImage: imagePath!=null?  FileImage(imagePath!):null ,
                    radius: 100,
                    child:imagePath == null ? Icon(Icons.person):null,
                  ),

                ),
              ),
            ),

            Container(
                height: 45,
                width: 350,
                child: TextFormField(

                  controller:hospitalNameController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Hospital Name"),
                      prefixIcon: Icon(Icons.local_hospital)

                  ),)),
            SizedBox(height: 10,),
            Container(
                height: 45,
                width: 350,
                child: TextFormField(

                  controller:cityController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("City Name"),
                      prefixIcon: Icon(Icons.location_city)

                  ),)),
            SizedBox(height: 10,),
            Container(
                height: 45,
                width: 350,
                child: TextFormField(

                  controller:addressController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Address"),
                      prefixIcon: Icon(Icons.location_pin)

                  ),)),

            SizedBox(height: 10,),
            Center(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 45,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () => InsertDataSql(context),
                    child: Text("Submit", style: TextStyle(color: Colors
                        .white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))
                    ),),
                )),






          ],),),
    );
  }

}