import 'package:flutter/material.dart';

class Meditation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        alignment: Alignment.bottomCenter,
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            height: 350,
            width: double.infinity,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2019/03/22/19/40/meteora-4074026__340.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              bottom: -380,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hatha Yoga class",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "For Beginners",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              ClipOval(
                                child: Container(
                                    height: 40,
                                    width: 40,
                                    child: Image.network(
                                        "https://www.freepngimg.com/thumb/yoga/12-2-yoga-png-clipart.png",
                                        fit: BoxFit.fill)),
                              ),
                              Positioned(
                                left: 25,
                                child: ClipOval(
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      child: Image.network(
                                        "https://www.pngitem.com/pimgs/m/230-2308074_yoga-silhouette-lotus-position-clip-art-yoga-poses.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text("Afran Sarkar",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  Text("and"),
                                  Text("Mustafizur Rahman",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                              SizedBox(height: 5),
                              Text("Hatha,Meditation,Breathwork"),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text("Hatha,Meditation,Breathwork with Afran Sarkar,Hatha,Meditation,Breathwork with Mustafizur Rahman",style: TextStyle(fontSize: 18),maxLines: 3,),
                      SizedBox(height: 10,),
                      Text("Read more",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Divider(thickness: 3.0,),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("24 lessons",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                SizedBox(height: 5,),
                                Text("3 Weeks . 1-2 Level")
                              ],
                            ),
                            Container(
                              height: 70,width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                color: Colors.orange
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                      Text("Start",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                                      FloatingActionButton(
                                        backgroundColor: Colors.white,
                                        child: Icon(Icons.arrow_right,color: Colors.black12,size: 60,),
                                        onPressed: (){})
                                ],
                              ),
                            )
                        ],
                      )

                    ],
                  ),
                ),
                height: 400,
                width: 393,
              ))
        ],
      ),
    ]));
  }
}
