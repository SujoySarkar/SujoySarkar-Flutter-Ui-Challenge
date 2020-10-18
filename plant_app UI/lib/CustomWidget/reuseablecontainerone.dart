import 'package:flutter/material.dart';

class ReuseableContainerone extends StatelessWidget {
   ReuseableContainerone({this.name,this.price,this.url }) ;
  final String name;
  final String price;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      decoration: BoxDecoration(
               color: Color(0xffedf7fb),
               borderRadius: BorderRadius.all(
                 Radius.circular(20)
               )
             ),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(top:8.0,right: 8.0),
                   child: Align(
                     alignment: Alignment.bottomRight,
                     child: CircleAvatar(
                       radius: 15,
                       backgroundColor: Colors.white,
                       child: Icon(Icons.favorite_border),
                     ),
                   ),
                 ),
                 Expanded(child: Container(child: Image.asset(url,fit: BoxFit.cover,))),
                 Text(name,style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 8,),
                 Text(price,style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 12,),
               ],
             ),
    );
  }
}