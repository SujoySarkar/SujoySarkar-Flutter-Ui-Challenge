import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1bbd72),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Stack(
                overflow: Overflow.visible,
                alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(

                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xff1bbd72),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Text(
                            "Mango",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontWeight: FontWeight.w700,
                              fontSize: 35,
                              color: Color(0xffffffff),
                            ),
                          ),
                          new Text(
                            "From",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 26,
                              color: Color(0xffefe5e5),
                            ),
                          ),
                          new Text(
                            "\$10",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 25,
                              color: Color(0xffffffff),
                            ),
                          ),
                          new Text(
                            "Sizes",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 20,
                              color: Color(0xffeee7e7),
                            ),
                          ),
                          new Text(
                            "Medium",
                            style: TextStyle(
                              fontFamily: "Segoe UI",
                              fontSize: 25,
                              color: Color(0xffffffff),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: MediaQuery.of(context).size.height / -8,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 3,
                        child: Image.network(
                            "https://purepng.com/public/uploads/large/purepng.com-mangomangojuicy-stone-fruitindian-mangocommon-mango-1701527332082oqnj6.png"),
                      ))
                ],
              )),
          Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height/6,),
                      new Text(
                        "Product description",
                        style: TextStyle(
                          fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color:Color(0xff000000),
                        ),
                      ),
                      SizedBox(height: 10,),
                      new Text(
                        "Mangoes are sweet, creamy fruits that\nhave a range of possible health benefits.",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: 18,
                          color:Color(0xff000000),
                        ),
                      ),
                      SizedBox(height: 10,),
                      new Text(
                        "Details",
                        style: TextStyle(
                          fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color:Color(0xff000000),
                        ),
                      ),
                      SizedBox(height: 10,),
                      new Text(
                        "Weight: 1 kg",
                        style: TextStyle(
                          fontFamily: "Segoe UI",
                          fontSize: 18,
                          color:Color(0xff000000),
                        ),
                      )
                    ],
                  ),

                ),
              )),
        ],
      ),
    );
  }
}
