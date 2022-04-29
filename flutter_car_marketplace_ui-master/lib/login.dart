import 'package:dealerapp/main_page.dart';
import 'package:flutter/material.dart';
import 'package:dealerapp/login.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                    width: 470,
                    height: 250,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/Capture.JPG')),
              ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Mobile Number',
                    hintText: 'Enter valid 10 digit mobile number'),
              ),
            ),
            FlatButton(
            ),
            Container(
              height: 35,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                Navigator.push(
                      context, MaterialPageRoute(builder: (_) => MainPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),

          ],
        ),
      ),
    );
  }
}