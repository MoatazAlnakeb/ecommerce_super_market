import 'package:custom_navigator/custom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:souq_app/scr/screens/home_page.dart';
import 'package:souq_app/scr/screens/test_screen.dart';
import 'package:souq_app/scr/screens/welcome_screen.dart';
import 'package:souq_app/scr/screens/login_page.dart';
import 'package:custom_navigator/custom_navigator.dart';
import '../commons.dart';
import 'custom_text.dart';

class Bottom_Nav_Bar extends StatefulWidget {
  @override
  _Bottom_Nav_BarState createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int _selectedItemIndex = 4;
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









/*class Bottom_Nav_Bar extends StatefulWidget {
  @override
  _Bottom_Nav_BarState createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int _currentIndex = 0;
  final List<Widget> _children =[
    Login_Page(),
    TestScreen(),
    TestScreen(),
    TestScreen(),
    HomePage(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:_children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        fixedColor: blue_dark,
        onTap: onTappedBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box,size: 30,),
            activeIcon: IconButton(icon: Icon(Icons.account_box,color: blue_dark,size: 30,),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Login_Page();
                      },
                    ),
                  );
                }
            ),
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
            icon: Icon( Icons.home,color: grey,size: 30,),
            title: Text( "الرئيسية",style: TextStyle(fontSize: 17),),
            backgroundColor: white,
          ),
        ],

      ),
    );
  }
}*/







/*

class Bottom_Nav_Bar extends StatefulWidget {
  @override
  _Bottom_Nav_BarState createState() => _Bottom_Nav_BarState();
}

class _Bottom_Nav_BarState extends State<Bottom_Nav_Bar> {
  int _currentIndex = 0;
  final List<Widget> _children =[
    Login_Page(),
    TestScreen(),
    TestScreen(),
    TestScreen(),
    HomePage(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return



    CustomScaffold(
      scaffold: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            //type: BottomNavigationBarType.fixed,
            //fixedColor: blue_dark,
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
                icon: Icon( Icons.home,color: grey,size: 30,),
                title: Text( "الرئيسية",style: TextStyle(fontSize: 17),),
                backgroundColor: white,
              ),
            ]
        ),
      ),
      children: <Widget>[
        Login_Page(),
        TestScreen(),
        TestScreen(),
        TestScreen(),
        HomePage(),
      ],
    );




    Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
          currentIndex: _currentIndex,
          //type: BottomNavigationBarType.fixed,
          fixedColor: blue_dark,
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
              icon: Icon( Icons.home,color: grey,size: 30,),
              title: Text( "الرئيسية",style: TextStyle(fontSize: 17),),
              backgroundColor: white,
            ),
          ]
      ),
    );
  }
}
*/




