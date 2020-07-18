//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:souq_app/scr/screens/products.dart';
import 'package:souq_app/scr/screens/test_screen.dart';
import 'package:souq_app/scr/widgets/bottom_nav_bar.dart';
import 'package:souq_app/scr/widgets/custom_text.dart';
import 'package:souq_app/scr/widgets/custom_text_field.dart';

import '../commons.dart';
import 'home_page.dart';

class Welcom_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

      return Scaffold(
       // bottomNavigationBar:Bottom_Nav_Bar(),
        backgroundColor:white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:60,bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/logo.png",),
                ],
              ),
            ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomTextField(hint: "اختر المحافظة",icon: Icons.arrow_drop_down,color: blue_dark,
               onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return TestScreen();
                   },
                 ),
               );
             },),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomTextField(hint: "اختر المدينة",icon: Icons.arrow_drop_down, color: blue_dark,
               onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return TestScreen();
                   },
                 ),
               );
             },),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: CustomTextField(hint: "اختر الحي",icon: Icons.arrow_drop_down,color: blue_dark,
               onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(
                   builder: (context) {
                     return TestScreen();
                   },
                 ),
               );
             },),
           ),

            Padding(
              padding: const EdgeInsets.only(top:30.0,bottom: 20),
              child: SizedBox(
                width: width*.8,
                height: height*.09,

                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: some_yellow,
                  child: Text("تأكيد",  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,

                  ),),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return Scaffold(
                            bottomNavigationBar:Bottom_Nav_Bar(),
                            body: HomePage(),
                          );
                        }
                        ),);
                  },
                ),
              ),
            )



          ],
        ),
      );

  }
}
