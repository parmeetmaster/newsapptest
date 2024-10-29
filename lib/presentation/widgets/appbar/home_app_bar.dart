

import 'package:company_test/controller/home/home_screen_controller.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
  class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(200);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
     children: [
       Container(
         height: 100,
         width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.vertical(
           //  bottom: Radius.circular(10),
           ),
         ),
         child: Padding(
           padding: const EdgeInsets.only(top: 50.0, left: 20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'Latest News',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               Text(
                 "Stay Tuned with latest News",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 10,
                 ),
               ),
             ],
           ),
         ),
       ),
       if(ref.watch(home))
       Container(
         width: double.infinity,
         decoration: BoxDecoration(
           color: Colors.black,
           borderRadius: BorderRadius.vertical(
             //  bottom: Radius.circular(10),
           ),
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(4.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.cloud_off,color: Colors.white,size: 12,),
                   SizedBox(width: 5,),
                   Text(
                     "You are curruntly Offline",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 10,
                     ),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
     ],
    );
  }

// Specify the height of the AppBar
}