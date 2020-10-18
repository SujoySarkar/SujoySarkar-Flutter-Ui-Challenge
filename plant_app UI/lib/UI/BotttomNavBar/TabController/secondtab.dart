import 'package:flutter/material.dart';
import 'package:new_project/CustomWidget/reuseablecontainertwo.dart';


class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: DefaultTabController(
            length: 4,
                      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(24),
                  child: TabBar(
                    isScrollable: false,
                    labelColor: Colors.black54,
                    unselectedLabelColor: Colors.black38,
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                    ),
                    indicatorColor: Colors.transparent,
                    tabs: [
            Tab(
              text: "Synthesis",
            ),
            Tab(
              text: "Organic",
            ),
            Tab(
              text: "Outdoor",
            ),
            Tab(
              text: "Indoor",
            ),
          ]),
        ),
        body: TabBarView(children: [
          Synthesis(),
          Organic(),
          Outdoor(),
          Indoor()
        ]),
      ),
          ),
    );
  }
}

class Synthesis extends StatefulWidget {
  @override
  _SynthesisState createState() => _SynthesisState();
}

class _SynthesisState extends State<Synthesis> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReuseableContainertwo(
            url: "assets/ceramicround.png",
            name: "Ceramic round",
            price: "\$ 50.49",
          ),
          SizedBox(width: 15,),
           ReuseableContainertwo(
            url: "assets/img1.png",
            name: "Tob plant",
            price: "\$ 50.49",
          ),
          SizedBox(width: 15,),
           ReuseableContainertwo(
            url: "assets/img2.png",
            name: "Tob plant",
            price: "\$ 50.49",
          ),
          
        ],
      ),
    );
  }
}



class Organic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Organic"),
    );
  }
}
class Outdoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Outdoor"),
    );
  }
}
class Indoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Indoor"),
    );
  }
}