import 'package:flutter/material.dart';
import 'package:flutterapp/tab_pages/four.dart';
import 'package:flutterapp/tab_pages/one.dart';
import 'package:flutterapp/tab_pages/three.dart';
import 'package:flutterapp/tab_pages/two.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/4),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: new Text(
                        "Top Items",
                        style: TextStyle(
                          fontFamily: "Segoe UI",fontWeight: FontWeight.w600,
                          fontSize: 40,
                          color:Color(0xff000000),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              leading: Icon(Icons.menu,color: Colors.blue,),
              actions: <Widget>[
                Icon(Icons.shopping_cart,color: Colors.black,)
              ],
              bottom: TabBar(
                labelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  unselectedLabelStyle: TextStyle(fontSize: 16),

                  tabs: [
                Tab(
                  text: "Top",
                ),
                Tab(
                  text: "fruits",
                ),
                Tab(
                  text: "Flowers",
                ),
                Tab(
                  text: "Plants",
                ),
              ]),
            ),
          ),
          body: TabBarView(children: [
            One(),
            Two(),
            Three(),
            Four()
          ]),

        ),
      ),
    );
  }
}
