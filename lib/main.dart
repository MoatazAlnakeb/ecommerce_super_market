import 'package:flutter/material.dart';
import 'package:souq_app/scr/commons.dart';
import 'package:souq_app/scr/screens/home_page.dart';
import 'package:souq_app/scr/screens/login_page.dart';
import 'package:souq_app/scr/screens/test_screen.dart';
import 'dart:async';
import 'package:souq_app/scr/screens/welcome_screen.dart';
import 'package:souq_app/scr/widgets/bottom_nav_bar.dart';
import 'package:souq_app/scr/widgets/custom_text.dart';
import 'package:splashscreen/splashscreen.dart';


/*
void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: white,
      image: Image.asset("images/logo.png", fit: BoxFit.fill,),
      loaderColor: white,
      photoSize: 200,
      navigateAfterSeconds: Welcom_Screen(),
    );
  }
*/


  void main() {
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));
  }

  class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
  }

  class _MyAppState extends State<MyApp> {
  @override
  void initState() {
  // TODO: implement initState
  super.initState();
  Future.delayed(
  Duration(
  seconds: 5,
  ), () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Welcom_Screen()));
  });
  }

  @override
  Widget build(BuildContext context) {


  //as a photo shop welcome image:
    return Container(
      color: white,
      child: Image.asset(
        "images/welcome.png",
        fit: BoxFit.fill,
      ),
    );



/*
    return Scaffold(
      //bottomNavigationBar:Bottom_Nav_Bar(),
      body: Image.asset(
        "images/welcome.png",
        fit: BoxFit.fill,
      ),
    );
*/



  }


  //as a design image
  /*   return Container(
      color: white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:90.0),
            child: Image.asset("images/logo.png",fit: BoxFit.fill,),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom:16.0),
              //child: Text("All rights are saved",style: TextStyle(),),
              child: CustomText(text: "All rights are saved",color: blue,size: 20,weight: FontWeight.bold,)
          )
        ],

      ),
    );*/
  }



/*
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedItemIndex = 0;
  final List pages = [
    Login_Page(),
    TestScreen(),
    TestScreen(),
    TestScreen(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F0F0),
              //fixedColor: blue_dark,
            unselectedItemColor: Colors.grey,
            selectedItemColor: blue_dark,
            selectedIconTheme: IconThemeData(color: blue_dark),
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _selectedItemIndex = index;
              });
            },
              items:
              [
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box,size: 30,),
                  title: Text( "حسابي",style: TextStyle(fontSize: 17)),
                  backgroundColor: white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite,size: 30,),
                  title: Text("المفضلة",style: TextStyle(fontSize: 17),),
                  backgroundColor: white,
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.view_comfy,size: 30,),
                  title: Text( "طلباتي",style: TextStyle(fontSize: 17),),
                  backgroundColor: white,
                ),

                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket,size: 30,),
                  title:Text( "اقسام",style: TextStyle(fontSize: 17),),
                  backgroundColor: white,
                ),

                BottomNavigationBarItem(
                  icon: Icon( Icons.home,size: 30,),
                  title: Text( "الرئيسية",style: TextStyle(fontSize: 17),),
                  backgroundColor: white,
                ),
              ]
          ),
          body: pages[_selectedItemIndex]
      ),
    );
  }
}
*/


