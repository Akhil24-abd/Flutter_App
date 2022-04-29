import 'package:dealerapp/LLocation.dart';
import 'package:dealerapp/home_page.dart';
import 'package:dealerapp/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


class MainPage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    User user = FirebaseAuth.instance.currentUser;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("                               Profile"),
        titleTextStyle: (
           TextStyle(color: blueColor,fontWeight : FontWeight.w800) 
               ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            tooltip: 'Call Icon',
            color: blueColor,
            onPressed: () {},
          ), //IconButton
           //IconButton
        ], //<Widget>[]
        backgroundColor: Colors.white,
        elevation: 50.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Back Icon',
          color: blueColor,
          onPressed: () {},
        ),
        //IconButton
        brightness: Brightness.dark,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Container(
                    width: 470,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50.0)),
                      child: Image.asset('assets/cap.JPG')),),
            MyCustomForm(),
            SizedBox(
              height: 60,
            ),
           Text('Logout'),
          ],
        ),
      ),
        )
    );
  }
}  
class MyCustomForm extends StatefulWidget {  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }
}  
  class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>() ; 

  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            validator: (value) {
              if (value == null || value.isEmpty) {
                  return 'Please enter your Email Address ';
              }
              return null;
            },
            controller: emailcontroller,
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your Email Address',  
              labelText: 'Email Address',  
            ),  
          ),  
          TextFormField(  
            validator: (value) {
              if (value == null || value.isEmpty) {
                    return 'Please enter password';
              }
              return null;
            },
            controller: namecontroller,
            decoration: const InputDecoration(  
              icon: const Icon(Icons.email),  
              hintText: 'Enter password',  
              labelText: 'Password',  
            ),  
          ),  
           SizedBox(
             height: 60.0,
           ),
           Center(
             child: Container(
              height: 45,
              width: 170,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                  
              child: ElevatedButton(
                onPressed: () async{
                  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text, password: namecontroller.text,);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LLocation()));
                },
                child: Text(
                  'Save Changes',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
           )    ,
           )
        ],  
      ),  
    );  
  }
  }     


