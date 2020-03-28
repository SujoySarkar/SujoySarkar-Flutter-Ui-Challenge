import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 240, 241, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(239, 240, 241, 1),
        elevation: 0,
        leading:Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset("Asset/back.png"),
        ),
        actions: <Widget>[Padding(
          padding: const EdgeInsets.all(15.0),
          child: Image.asset("Asset/notification.png"),
        )],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 5,),
          Center(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                      child: Image.asset("Asset/download.jpg")),
                ),
              ),
            ),

          ),
          SizedBox(height: 10,),
          Center(
            child: new Text(
              "Afran Nisho",
              style: TextStyle(
                fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                fontSize: 30,
                color:Color(0xff000000),
              ),
            ),
          ),
          Center(
            child: new Text(
              "@afran",
              style: TextStyle(
                fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                fontSize: 20,
                color:Color(0xff525858),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text(
                "Bedroom",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff525858),
                ),
              ),
              new Text(
                "Bathroom",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color:Color(0xff525858),
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              new Container(
                height: 35.00,
                width: 111.00,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.00,3.00),
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ], borderRadius: BorderRadius.circular(20.00),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                        fontSize: 29,
                        color:Color(0xff525858),
                      ),
                    ),
                    new Text(
                      "1",
                      style: TextStyle(
                        fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                        fontSize: 27,
                        color:Color(0xfff300bb),
                      ),
                    ),
                    new Text(
                      "+",
                      style: TextStyle(
                        fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color:Color(0xff525858),
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                height: 35.00,
                width: 111.00,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.00,3.00),
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ], borderRadius: BorderRadius.circular(20.00),
                ),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    "-",
                    style: TextStyle(
                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                      fontSize: 29,
                      color:Color(0xff525858),
                    ),
                  ),
                  new Text(
                    "3",
                    style: TextStyle(
                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                      fontSize: 27,
                      color:Color(0xfff300bb),
                    ),
                  ),
                  new Text(
                    "+",
                    style: TextStyle(
                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color:Color(0xff525858),
                    ),
                  )
                ],
              ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              color: Color(0xff14433e),borderRadius: BorderRadius.only(topLeft: Radius.circular(30.00), topRight: Radius.circular(30.00), ),
            ),

            child: Column(
              children: <Widget>[
                new Container(
                  height: 130.00,
                  decoration: BoxDecoration(
                    color: Color(0xff14433e),borderRadius: BorderRadius.only(topLeft: Radius.circular(30.00), topRight: Radius.circular(30.00), ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: new Text(
                          "Day",
                          style: TextStyle(
                            fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color:Color(0xffffffff),
                          ),
                        ),
                      ),

                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "2",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "3",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "4",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "5",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "6",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "7",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "8",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                height: 34.00,
                                width: 36.00,
                                decoration: BoxDecoration(

                                  border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(20.00),
                                ),
                                child: Center(
                                  child: new Text(
                                    "9",
                                    style: TextStyle(
                                      fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color:Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  height: 154.00,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffff9b04),borderRadius: BorderRadius.only(topLeft: Radius.circular(30.00), topRight: Radius.circular(30.00), ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: new Text(
                          "Time",
                          style: TextStyle(
                            fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color:Color(0xffffffff),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: 31.00,
                              width: 62.00,
                              decoration: BoxDecoration(

                                border: Border.all(width: 1.00, color: Color(0xffffffff),), borderRadius: BorderRadius.circular(30.00),

                              ),
                              child: Center(
                                child: new Text(
                                  "10:00",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color:Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                            new Container(
                              height: 31.00,
                              width: 62.00,
                              decoration: BoxDecoration(

                                border: Border.all(width: 1.00, color: Color(0xffffffff),), borderRadius: BorderRadius.circular(30.00),

                              ),
                              child: Center(
                                child: new Text(
                                  "12:00",
                                  style: TextStyle(
                                    fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color:Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
