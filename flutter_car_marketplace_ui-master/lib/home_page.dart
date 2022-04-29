import 'package:dealerapp/detail_page.dart';
import 'package:dealerapp/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bulao,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 31, top: 20, bottom: 38),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Find the",
                      style: blackTektFont1.copyWith(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Perfect Vehicles",
                        style: blackTektFont1.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: blueColor)),
                  ],
                ),
                Text(
                  "For You",
                  style: blackTektFont1.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 13, left: 17, bottom: 13),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 119,
                        decoration: BoxDecoration(
                            color: greyColor2,
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            Image.asset('assets/cari.png'),
                            SizedBox(width: 9),
                            Text(
                              'Search makes,modules or features',
                              style: blackTektFont1.copyWith(
                                  fontSize: 14, color: greyColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Container(
                        height: 50,
                        width: 53,
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                image: AssetImage('assets/Vector.png'))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Text(
              'Showing Used Cars',
              style: blackTektFont1.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },

            child : Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children:[
              Container(     
                margin: EdgeInsets.only(left: 18, right: 24, top: 5, bottom: 10),
                padding: EdgeInsets.all(9),
                height: 175,
                width: 350,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Ertiga.jpeg'
                  ),
                  fit: BoxFit.fill
                )    
                ),
              ),
              Container(               
                margin: EdgeInsets.only(left: 18, right: 24, top: 5, bottom: 10),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8))),
                 child:
                 (
                Text(
                '2015 Maruti Ertiga',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 20
                      )
                 ),
                )
              ),  
            ),
            Container(
                margin: EdgeInsets.only(left: 18, right: 24, top: 5, bottom: 10),
                padding: EdgeInsets.all(9),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8))),
                child:
                 (
                Text(
                'ZDI SHVS | Manual',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 15
                      )
                 ),
                )
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                child: Card(
                  color: greyColor,
                  child: Text(
                'MH-47',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 14
                      )
                 ),
                 textAlign: TextAlign.center,
                )
                )
                
                )
                ,
                SizedBox(
                child: Card(
                  color: greyColor,
                  child: Text(
                '51,157 Km',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 14
                      )
                 ),
                 textAlign: TextAlign.center,
                )
                )
                ),
                SizedBox(
                child: Card(
                  color: greyColor,
                  child: Text(
                '1st Owner',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 14
                      )
                 ),
                 textAlign: TextAlign.center,
                )
                )
                ),
                SizedBox(
                child: Card(
                  color: greyColor,
                  child: Text(
                'Diesel',
                 style:(
                      TextStyle(
                        color: Colors.black, fontSize: 14
                      )
                 ),
                 textAlign: TextAlign.center,
                )
                )
                )
                
                
                 
            ],
            )     
            ]
          )
            
          ),

          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
