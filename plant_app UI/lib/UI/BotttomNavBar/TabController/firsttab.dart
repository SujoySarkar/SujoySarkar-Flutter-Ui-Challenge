


import 'package:flutter/material.dart';
import 'package:new_project/CustomWidget/reuseablecontainerone.dart';


class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: DefaultTabController(
            length: 2,
                      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(44),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: TabBar(
                      isScrollable: false,
                      labelColor: Colors.black54,
                      unselectedLabelColor: Colors.black38,
                      labelStyle: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      indicatorColor: Colors.transparent,
                      tabs: [
            Tab(
              text: "Recomendation",
            ),
            Tab(
              text: "Best Seller",
            ),
          ]),
                  ),
        ),
        body: TabBarView(children: [
          Recomendation(),
          BestSeller()
        ]),
      ),
          ),
    );
  }
}

class Recomendation extends StatefulWidget {
  @override
  _RecomendationState createState() => _RecomendationState();
}

class _RecomendationState extends State<Recomendation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReuseableContainerone(
            name: "Alphaplant",
            price: "\$ 50.49",
            url:"assets/alphaplant.png" ,
          ),
          SizedBox(width: 20,),
          ReuseableContainerone(
            name: "Crassulaovata",
            price: "\$ 40.99",
            url:"assets/crassulaovata.png" ,
          ),
          SizedBox(width: 20,),
          ReuseableContainerone(
            name: "Alphaplant",
            price: "\$ 50.49",
            url:"assets/alphaplant.png" ,
          ),
        ],
      ),
    );
  }
}



class BestSeller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Best Seller"),
    );
  }
}