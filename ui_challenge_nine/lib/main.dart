import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool value = false;
  double screenheight,screenwidth;
  @override
  Widget build(BuildContext context) {
     screenheight = MediaQuery.of(context).size.height;
     screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black38,
        body: Stack(
          children: <Widget>[Menu(), Home()],
        ),
      ),
    );
  }

  Widget Menu() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(radius: 40,backgroundColor: Colors.white,
              child: Image.network("http://www.pngplay.com/wp-content/uploads/2/Cartoon-Man-Background-PNG-Image.png"),),
            SizedBox(height: 5,),
            Text(
              "Afran Sarkar",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "thed9954@gmail.com",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  ),
            ),
            SizedBox(height: 15,),
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "About",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Privacy",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "profile",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Share",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget Home() {
    return AnimatedPositioned(
      duration: Duration(
        seconds: 1,
      ),
      top: value==false? 0:100,
      bottom: value==false? 0:100,
      left:value==false? 0: 200,
      right:value==false? 0: -150,
      child: Container(

        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        value = !value;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
