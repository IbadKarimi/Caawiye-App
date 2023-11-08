
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/kalkaal_taqasus1.dart';

class Category5 extends StatelessWidget {
  const Category5({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          Get.to(Taqasus5());

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
                  child: CachedNetworkImage(
                    imageUrl: "https://i.imgur.com/oxCZU8J.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "dermtology",
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
    );
  }
}
