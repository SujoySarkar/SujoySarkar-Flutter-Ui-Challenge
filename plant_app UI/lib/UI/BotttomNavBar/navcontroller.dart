import 'package:flutter/material.dart';
import 'package:new_project/UI/BotttomNavBar/Pages/account.dart';
import 'package:new_project/UI/BotttomNavBar/Pages/basket.dart';
import 'package:new_project/UI/BotttomNavBar/Pages/chat.dart';
import 'package:new_project/UI/BotttomNavBar/Pages/home.dart';
import 'package:new_project/UI/BotttomNavBar/Pages/whishlist.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index=0;
  final pages=[
    Home(),Chat(),Whishlist(),Basket(),Account()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
       bottomNavigationBar: BottomNavigationBar(
         showUnselectedLabels: true,
         selectedItemColor: Colors.black87,
         unselectedItemColor: Colors.black45,
         currentIndex:index ,
         items: [
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black45,),
         label: "Home"
         ),
         BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black45,),
         label: "Chat"
         ),
         BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black45,),
         label: "Whishlist"
         ),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_basket,color: Colors.black45,),
         label: "Basket"
         ),
         BottomNavigationBarItem(icon: Icon(Icons.people,color: Colors.black45,),
         label: "Account"
         ),
         
         
       ],
       onTap: (value){
         setState(() {
           index=value;
         });
       },
       ),
       body: pages[index],
      ),
    );
  }
}