

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_project/UI/BotttomNavBar/TabController/firsttab.dart';
import 'package:new_project/UI/BotttomNavBar/TabController/secondtab.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(icon: Icon(Icons.menu,color: Colors.black54,), onPressed: null),
     title: Text("Sam's Garden",style: TextStyle(
       fontSize: 20,
       fontWeight: FontWeight.w500,
       fontStyle: FontStyle.italic,
       color: Colors.black54
     ),),
     centerTitle: true,
     actions: [
       IconButton(icon: Icon(Icons.notifications,color: Colors.black54,), onPressed: null),
     ],
      ),
     body: Padding(
       padding:  EdgeInsets.all(15.0),
       child: Column(
         children: [
           Container(
             height: 48,
             decoration: BoxDecoration(
               color: Color(0xffedf7fb),
               borderRadius: BorderRadius.all(
                 Radius.circular(30)
               )
             ),
             child: TextField(
               enabled: false,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: "Search your plant",
                 prefixIcon: Icon(Icons.search),
                 suffixIcon: Icon(Icons.keyboard_voice)
               ),
             ),
           ),
           SizedBox(height: 16,),
           Expanded(flex:3,child: FirstTab()),
           SizedBox(height: 10,),
           Expanded(flex:2,child: SecondTab()),
         ],
       ),
     ),
    );
  }
}