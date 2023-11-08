//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../models/categorymodal.dart';
// import '../screens/hospitals_list.dart';
// import 'hospitals_list_widgets.dart';
//
// class CategoryCard extends StatelessWidget {
//   const CategoryCard({Key? key, required this.category}) : super(key: key);
//
//   final CategoryModal category;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//         borderRadius: BorderRadius.circular(20),
//
//         child: InkWell(
//           onTap: () {
//             Get.to(Hospitals());
//
//           },
//           borderRadius: BorderRadius.circular(20),
//           child: Container(
//             width: 96,
//             height: 100,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//              border: Border.all(color: Colors.blue.shade50),
//           ),
//             padding: EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                       bottomLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(10),
//
//                     ),
//
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(10),
//                       topRight: Radius.circular(10),
//                       bottomLeft: Radius.circular(10),
//                       bottomRight: Radius.circular(10),
//
//                     ),
//                     child: CachedNetworkImage(
//                       imageUrl: category.image,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 6),
//                 Expanded(
//                   child: Center(
//                     child: Text(
//                       category.specialist_name,
//                       style:TextStyle(fontSize: 12,),
//                       textAlign: TextAlign.center,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//               ],
//             ),
//           ),
//         ),
//
//     );
//   }
// }
