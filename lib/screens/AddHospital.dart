


import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;

class HospitalList extends StatefulWidget{


  @override
  State<HospitalList > createState() => _HospitalList ();
}

class _HospitalList  extends State<HospitalList> {

  TextEditingController hospitalNameController=TextEditingController();
  TextEditingController cityController=TextEditingController();
  TextEditingController addressController=TextEditingController();

  Future<void> uploadImageSql()async{
    try{
      String uri="http://192.168.1.6:8080/Hospital/UploadImage.php";

      var res=await http.post(Uri.parse(uri),body: {
        "caption":"Current Image is Uploaded",
        "name":imageName,
        "data":imageData,

      });

      var response=jsonDecode(res.body);
      if(response["success"]==true){
        print("Uploaded");
      }else{
        print("Error");
      }

    }catch(e){
      print("Error:"+e.toString());
    }

  }

  File? imagePath;
  String? imageName;
  String? imageData;
  ImagePicker imagePicker=ImagePicker();

  Future<void> getImageSql()async{
    var getImage=await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imagePath=File(getImage!.path);
      imageName=getImage.path.split("/").last;
      imageData=base64Encode(imagePath!.readAsBytesSync());
      print("Image Path is "+imagePath.toString());
      print("Image Name is "+imageName.toString());
      print("Image Data is is "+imageData.toString());
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
                    getImageSql();
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

                  controller:hospitalNameController,
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
                    onPressed: () => uploadImageSql(),
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