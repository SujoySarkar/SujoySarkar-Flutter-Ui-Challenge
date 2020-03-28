import 'package:flutter/material.dart';

import 'Second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(20, 67, 62, 1),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 200,
                  child: Image.asset("Asset/cleaner.png"),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              new Text(
                "Provide You",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              new Text(
                "Best Cleaning",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                  shadows:[
                    Shadow(
                      offset: Offset(0.00,3.00),
                      color: Color(0xff000000).withOpacity(0.16),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              new Text(
                "Service",
                style: TextStyle(
                  fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                  fontSize: 40,
                  color:Color(0xffffffff),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                child: new Container(
                  height: 40.00,
                  width: 154.00,
                  decoration: BoxDecoration(
                    color: Color(0xffff9b04),
                    border: Border.all(width: 1.00, color: Color(0xff707070),), borderRadius: BorderRadius.circular(10.00),
                  ),
                  child: Center(
                    child: new Text(
                      "Go",
                      style: TextStyle(
                        fontFamily: "Segoe UI",fontWeight: FontWeight.w700,
                        fontSize: 33,
                        color:Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => Second()));
                } ,
              )

            ],
          ),
        ),

      ),
    );
  }
}
