import 'package:flutter/material.dart';
import 'package:uichallenge/ListPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _value = 10;
  double _min = 10;
  double _max = 100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFDFE9FD),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Container(
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
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFF9FAEC7),
                        size: 25,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MusicList()));
                    },
                  ),
                  Text(
                    "Playing Now",
                    style: TextStyle(
                        color: Color(0xFF9FAEC7),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Container(
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
                    child: Icon(
                      Icons.menu,
                      color: Color(0xFF9FAEC7),
                      size: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  height: 200,
                  width: 200,
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
              SizedBox(
                height: 10,
              ),
              Text(
                "Lose it",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              Text(
                "Flume ft. Vic Mensa",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              SliderTheme(
                data: SliderThemeData(
                    trackHeight: 10.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 17)),
                child: Slider(
                    value: _value,
                    min: _min,
                    max: _max,
                    activeColor: Colors.blue,
                    inactiveColor: Colors.white70,
                    onChanged: (val) {
                      setState(() {
                        _value = val;
                        print(_value);
                      });
                    }),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ReusableContainer(
                    deccolor: Color(0xFFDEE7F6),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF9FAEC7),
                      size: 25,
                    ),
                  ),
                  ReusableContainer(
                    deccolor: Colors.blue,
                    icon: Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  ReusableContainer(
                    deccolor: Color(0xFFDEE7F6),
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF9FAEC7),
                      size: 25,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ReusableContainer extends StatelessWidget {
  Icon icon;
  Color deccolor;
  ReusableContainer({this.icon, this.deccolor});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: 70,
        decoration:
            BoxDecoration(color: deccolor, shape: BoxShape.circle, boxShadow: [
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
        child: icon);
  }
}
