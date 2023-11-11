


import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:caawiye_app/screens/CategoryList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

import 'AddDoctor.dart';
import 'HospitalList.dart';

class  AddCategory extends StatefulWidget{

  String hospitalId; // here i change int to string
  String hospitalName;
  AddCategory({required this.hospitalId,required this.hospitalName});


  @override
  State<AddCategory > createState() => _AddCategory ();
}

class _AddCategory  extends State<AddCategory> {
  late int categoryId;

  File? imagePath;
  String? imageName;
  String? imageBytes;
  ImagePicker imagePicker=ImagePicker();

  TextEditingController categoryController=TextEditingController();



  Future<void> InsertDataSql(BuildContext context)async{
    try{
      String uri="http://192.168.1.6:8080/Hospital/PostCategoryData.php";

      var res=await http.post(Uri.parse(uri),body: {
        "hospitalId":widget.hospitalId.toString(),
        "imageName":imageName,
        "imageBytes":imageBytes,
        "categoryName":categoryController.text,

      });

      var response=jsonDecode(res.body);
      if(response["success"]==true){
        categoryId = response["id"];
       // Get.to(()=>Doctor(categoryId: categoryId.toString(),hospitalName: widget.hospitalName,));
       Get.to(()=>HospitalDepartments(hospitalId: widget.hospitalId, hospitalName: widget.hospitalName));
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
                child: Text("Add Hospital Category",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),
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

                  controller:categoryController,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Category Name"),
                      prefixIcon: Icon(Icons.category)

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