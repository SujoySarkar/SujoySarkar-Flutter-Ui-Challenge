import 'package:flutter/material.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDFE9FD),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  Text(
                    "Skin - FLUME",
                    style: TextStyle(
                        color: Color(0xFF9FAEC7),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SampleConatiner(
                          icon: Icon(
                        Icons.favorite,
                        color: Color(0xFF9FAEC7),
                        size: 25,
                      )),
                      Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                              color: Color(0xFFDEE7F6),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(4.0, 4.0),
                                    blurRadius: 15.0,
                                    spreadRadius: 1.0),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4.0, -4.0),
                                    blurRadius: 8.0,
                                    spreadRadius: 1.0),
                              ]),
                          child: Image.network(
                              "http://pngimg.com/uploads/rose/rose_PNG66737.png")),
                      SampleConatiner(
                          icon: Icon(
                        Icons.mode_edit,
                        color: Color(0xFF9FAEC7),
                        size: 25,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: <Widget>[
                      ListTileWidget(
                        title: "Helix",
                        subtitle: "Flume",
                      ),
                      ListTileWidget(
                        title: "Never Be Like You",
                        subtitle: "Flume - kai",
                      ),
                      ListTileWidget(
                        title: "Lose It",
                        subtitle: "Flume - Vic Mensa",
                      ),
                      ListTileWidget(
                        title: "Say It",
                        subtitle: "Flume - Tove Lo",
                      ),
                      ListTileWidget(
                        title: "Wall F*ck",
                        subtitle: "Flume",
                      ),
                      ListTileWidget(
                        title: "Pika",
                        subtitle: "Flume",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SampleConatiner extends StatelessWidget {
  Icon icon;
  SampleConatiner({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Color(0xFFDEE7F6),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 8.0,
                spreadRadius: 1.0),
          ]),
      child: icon,
    );
  }
}

class ListTileWidget extends StatelessWidget {
  var title;
  var subtitle;
  ListTileWidget({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey, fontSize: 18),
      ),
      trailing: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: Color(0xFFDEE7F6),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 8.0,
                  spreadRadius: 1.0),
            ]),
        child: Icon(
          Icons.play_arrow,
          color: Color(0xFF9FAEC7),
          size: 25,
        ),
      ),
    );
  }
}
