import 'package:flutter/material.dart';
import 'package:flutterapp/detailspage.dart';

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(

            height: MediaQuery.of(context).size.height / 1.9,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    overflow: Overflow.visible,
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          height: 280,
                          width: 190,
                          decoration: BoxDecoration(
                              color: Color(0xff1bbd72),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Column(
                            children: <Widget>[
                              new Text(
                                "From",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Color(0xfff0e8e8),
                                ),
                              ),
                              new Text(
                                "\$05",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              Container(
                                height: 140,
                                width: 140,
                                child: Image.network(
                                    "https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png"),
                              ),
                              new Text(
                                "Mango",
                                style: TextStyle(
                                  fontFamily: "Segoe UI",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Color(0xffffffff),
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail()));
                        },
                      ),
                      Positioned(
                        bottom: -30,
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),
          ),
          new Text(
            "Description",
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Color(0xff000000),
            ),
          ),
          new Text(
            "Here, all the items are fresh.We always deliver fresh products.You can also see the condition of the products before purching. ",
            style: TextStyle(
              fontFamily: "Segoe UI",
              fontSize: 18,
              color: Color(0xff000000),
            ),
          )
        ],
      ),
    ));
  }
}
