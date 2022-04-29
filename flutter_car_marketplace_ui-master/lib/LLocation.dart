import 'package:dealerapp/home_page.dart';
import 'package:dealerapp/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(LLocation());

class LLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/mum.jpg",
      "assets/del.jpg",
      "assets/kol.jpg",
      "assets/chn.jpg",
      "assets/bna.jpg",
      "assets/hyd.jpg",
      "assets/pun.jpg",
      "assets/nag.jpg",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Location'),
          backgroundColor: Colors.white10,
          actions: <Widget>[
            IconButton(onPressed: (){
              Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
            }, icon: Icon(Icons.search))
          ],
        ), 
        body: Center(
          child: Container(         
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(images[index]);
              },
            ),
          ),
        ),
      ),
    );
  }
}