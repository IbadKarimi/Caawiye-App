




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

class  AddSliderImage extends StatefulWidget{

  String hospitalId;
  String hospitalName;
  // here i change int to string

  AddSliderImage({required this.hospitalId,required this.hospitalName});


  @override
  State<AddSliderImage > createState() => _AddSliderImage ();
}

class _AddSliderImage  extends State<AddSliderImage> {
  late int categoryId;

  File? imagePath;
  String? imageName;
  String? imageBytes;
  ImagePicker imagePicker=ImagePicker();

  TextEditingController categoryController=TextEditingController();



  Future<void> InsertDataSql(BuildContext context)async{
    print("Hospital id is========="+widget.hospitalId.toString());
    try{
      String uri="http://192.168.1.4:8080/Hospital/PostSliderImage.php";

      var res=await http.post(Uri.parse(uri),body: {
        "hospitalId":widget.hospitalId.toString(),
        "imageName":imageName,
        "imageBytes":imageBytes,


      });

      var response=jsonDecode(res.body);
      if(response["success"]==true){

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
                child: Text("Add Slider Image",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w600),),
              ),),

            SafeArea(
              child: Center(
                child: CupertinoButton(
                  onPressed: (){
                    getImage();
                  },
                  child: Container(
                    width: 300,
                    height: 200,
    decoration: BoxDecoration(
    image: imagePath != null
    ? DecorationImage(
    image: FileImage(imagePath!),
    fit: BoxFit.cover,
    )
        : null,
    ),
    child: imagePath == null
    ? Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
            border:Border.all(width: 1,color: Colors.grey)
      ),
      child: Center(
      child: Icon(Icons.add, size: 48.0),
      ),
    )
        : null,
    ),
    ),

                ),
              ),





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