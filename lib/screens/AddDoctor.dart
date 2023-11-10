


import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:caawiye_app/screens/AddHospital.dart';
import 'package:caawiye_app/screens/DoctorList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

import 'HospitalList.dart';

class Doctor extends StatefulWidget{
  String categoryId;
  String hospitalName;
  Doctor({required this.categoryId,required this.hospitalName});


  @override
  State<Doctor > createState() => _Doctor ();
}

class _Doctor extends State<Doctor> {
  int lastInsertedId=0;
  File? imagePath;
  String? imageName;
  String? imageBytes;

  TextEditingController fullNameController=TextEditingController();
  TextEditingController hospitalNameController=TextEditingController();
  TextEditingController experienceController=TextEditingController();
  TextEditingController specializationController=TextEditingController();
  TextEditingController feeController=TextEditingController();

  Future<void> InsertDataSql(BuildContext context)async{
    try{
      String uri="http://192.168.1.6:8080/Hospital/PostDoctorData.php";

      var res=await http.post(Uri.parse(uri),body: {
        "hospitalName":widget.hospitalName,
        "imageName":imageName,
        "imageBytes":imageBytes,
        "fullName":fullNameController.text,
        "specialization":specializationController.text,
        "experience":experienceController.text,
        "fee":feeController.text,
        "categoryId":widget.categoryId,


      });

      var response=jsonDecode(res.body);
      if(response["success"]==true){

       lastInsertedId = response["id"];

       // print("====================================>"+lastInsertedId.toString());
      Get.to(()=>DoctorList(hospitalName: widget.hospitalName,categoryId:widget.categoryId,));
        print("Uploaded");
      }else{
        print("Error");
      }

    }catch(e){
      print("Error:"+e.toString());
    }

  }



  ImagePicker imagePicker=ImagePicker();

  Future<void> getImageSql()async{
    var getImage=await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imagePath=File(getImage!.path);
      imageName=getImage.path.split("/").last;
      imageBytes=base64Encode(imagePath!.readAsBytesSync());
      print("Image Path is "+imagePath.toString());
      print("Image Name is "+imageName.toString());

    });



  }

  var picked;
  PlatformFile? _imageFiles;
  Future getImage()async{
    final _picker = ImagePicker();
    picked = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    File   _imageFile;

    if (picked != null) {

      setState(() {
        _imageFiles = picked.files.first;


        print("Image File Name is================>"+_imageFiles.toString());
      });
    }

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [

              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top:30),
                  child: Text("Add Doctor Data",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),
                ),),
              SafeArea(
                child: Center(
                  child: CupertinoButton(
                    onPressed: (){
                      getImageSql();
                    },
                    child: CircleAvatar(
                      backgroundImage: imagePath!=null?  FileImage(imagePath!):null ,
                      radius: 100,
                      child:imagePath == null ? Icon(Icons.person,size: 50,):null,
                    ),

                  ),
                ),
              ),
              Container(
                  height: 45,
                  width: 350,
                  child: TextFormField(

                    controller:fullNameController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.person)

                    ),)),


              SizedBox(height: 10,),
              Container(
                  height: 45,
                  width: 350,
                  child: TextFormField(

                    controller:specializationController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Specialization"),
                        prefixIcon: Icon(Icons.cast_for_education)

                    ),)),
              SizedBox(height: 10,),
              Container(
                  height: 45,
                  width: 350,
                  child: TextFormField(

                    controller:experienceController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Experience"),
                        prefixIcon: Icon(Icons.data_saver_on_outlined)

                    ),)),
              SizedBox(height: 10,),
              Container(
                  height: 45,
                  width: 350,
                  child: TextFormField(

                    controller:feeController,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Fee"),
                        prefixIcon: Icon(Icons.money)

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
      ),
    );
  }

}