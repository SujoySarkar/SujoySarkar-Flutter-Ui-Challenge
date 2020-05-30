import 'package:flutter/material.dart';

class Cardbox extends StatelessWidget {
  Cardbox({this.text1, this.text2, this.text3, this.url, this.width});
  final String url;
  final String text1;
  final String text2;
  final String text3;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: 100,
        width: width,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(text2),
                Text(text3),
              ],
            )
          ],
        ),
      ),
    );
  }
}
