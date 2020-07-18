import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:io';

//import 'package:image_picker/image_picker.dart';
import 'package:souq_app/scr/models/category.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:souq_app/scr/screens/login_page.dart';
import 'package:souq_app/scr/screens/test_screen.dart';
import 'package:souq_app/scr/widgets/bottom_nav_bar.dart';
import 'package:souq_app/scr/widgets/categories.dart';
import 'package:souq_app/scr/widgets/custom_text.dart';
import 'package:souq_app/scr/widgets/custom_text_field.dart';
import 'package:souq_app/scr/widgets/drawer.dart';

import '../commons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
/*
  File _image;
  void _getImage()async
  {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(()
    {
      _image = image;
    }
      );
  }*/

  List<Category> categoriesList = [
    Category(name: "العطارة", image: "3tara.png"),
    Category(name: "البقوليات", image: "bocoliat.png"),
    Category(name: "المجمدات", image: "freez.png"),
    Category(name: "المخبوزات", image: "ma5bzat.png"),
    Category(name: "الخضراوات", image: "vegitables.png"),
  ];

  final List<String> _listItem = [
    'images/chickens.png',
    'images/vegitables.png',
    'images/freez.png',
    'images/3tara.png',
    'images/bocoliat.png',
    'images/ma5bzat.png',
    //'images/chickens.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    Widget image_carousel = new Container(
      width: width * 0.9,
      height: height * 0.25,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/annonce.png"),
          AssetImage('images/salsa_hot.png'),
          AssetImage('images/chickens.png'),
          AssetImage('images/salsa_meat.png'),
        ],
        autoplay: true,
        autoplayDuration: Duration(seconds: 15),
        dotSize: 4,
        showIndicator: false,
      ),
    );
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            //header
            UserAccountsDrawerHeader(
              accountName: Text('Moataz Alnakeb '),
              accountEmail: Text('mo3tazalnakeb@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: blue_dark,
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return Scaffold(
                      bottomNavigationBar:Bottom_Nav_Bar(),
                      body: HomePage(),
                    );
                  }
                  ),);
              },
              child: ListTile(
                title: Text(
                  'الصفحة الرئسية',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.home,
                  color: blue_dark,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return Scaffold(
                     // bottomNavigationBar:Bottom_Nav_Bar(),
                      body: Login_Page(),
                    );
                  }
                  ),);
              },
              child: ListTile(
                title: Text(
                  'حسابي',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.person,
                  color: grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return Scaffold(
                      //bottomNavigationBar:Bottom_Nav_Bar(),
                      body: TestScreen(),
                    );
                  }
                  ),);
              },
              child: ListTile(
                title: Text(
                  ' طلباتي',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.view_comfy,
                  color: grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return Scaffold(
                     // bottomNavigationBar:Bottom_Nav_Bar(),
                      body: TestScreen(),
                    );
                  }
                  ),);
              },
              child: ListTile(
                title: Text(
                  'اقسام',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.shopping_basket,
                  color: grey,
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context){
                  return Scaffold(
                    // bottomNavigationBar:Bottom_Nav_Bar(),
                    body: TestScreen(),
                  );
                }
                ),);
              },
              child: ListTile(
                title: Text(
                  'المفضلة',
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.favorite,
                  color: grey,
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Setting',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(fontSize: 17),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:Bottom_Nav_Bar(),
      body: CustomScrollView(
        slivers: <Widget>[

          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: CustomSliverDelegate(
              expandedHeight: 120,
            ),
          ),
          SliverFillRemaining(
            child: ListView(
              children: <Widget>[
                Container(
                  color: white,
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: width * 0.9,
                        height: height * 0.25,
                        //color: black,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: image_carousel,
                          /* Image.asset(
                            "images/annonce.png",
                            fit: BoxFit.fill,
                          ),*/
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),

                      Categories(),

                      /* Expanded(

                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: _listItem.map((item) => Card(
                            color: Colors.transparent,
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover
                                  )
                              ),
                              child: Transform.translate(
                                offset: Offset(50, -50),
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white
                                  ),
                                  child: Icon(Icons.bookmark_border, size: 15,),
                                ),
                              ),
                            ),
                          )).toList(),
                        ),
                    )*/
                      Padding(
                        padding: const EdgeInsets.only(bottom:10.0),
                        child: Container(
                            color: grey,
                            child: SizedBox(height: 1,width: width*.8,)
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/salsa.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/news.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/offer.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            color: grey,
                            child: SizedBox(height: 1,width: width*.8,)
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(color: white, boxShadow: [
                                    BoxShadow(
                                      color: red[50],
                                      // offset: Offset(4, 6),
                                      blurRadius: 20,
                                    )
                                  ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "images/salsa_hot.png",
                                        width: width * 0.9,
                                        height: height * 0.25,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 70,
                                          width: width*.9,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(30),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black.withOpacity(0.8),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.6),
                                                    Colors.black.withOpacity(0.6),
                                                    Colors.black.withOpacity(0.4),
                                                    Colors.black.withOpacity(0.1),
                                                    Colors.black.withOpacity(0.05),
                                                    Colors.black.withOpacity(0.025),
                                                  ]
                                              )
                                          )
                                      ),
                                    )),
                                Positioned.fill(
                                  child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CustomText(
                                      text: "صلصات حارة",
                                      size: 40,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(color: white, boxShadow: [
                                    BoxShadow(
                                      color: red[50],
                                      // offset: Offset(4, 6),
                                      blurRadius: 20,
                                    )
                                  ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "images/salsa_italy.png",
                                        width: width * 0.9,
                                        height: height * 0.25,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 70,
                                          width: width*.9,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(30),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.6),
                                                    Colors.black.withOpacity(0.5),
                                                    Colors.black.withOpacity(0.4),
                                                    Colors.black.withOpacity(0.3),
                                                    Colors.black.withOpacity(0.1),
                                                    Colors.black.withOpacity(0.05),
                                                  ]
                                              )
                                          )
                                      ),
                                    )),
                                Positioned.fill(
                                  child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CustomText(
                                      text: "الصلصة الايطالية",
                                      size:40,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(color: white, boxShadow: [
                                    BoxShadow(
                                      color: red[50],
                                      // offset: Offset(4, 6),
                                      blurRadius: 20,
                                    )
                                  ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "images/salsa_meat.png",
                                        width: width * 0.9,
                                        height: height * 0.25,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 70,
                                          width: width*.9,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(30),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.6),
                                                    Colors.black.withOpacity(0.5),
                                                    Colors.black.withOpacity(0.4),
                                                    Colors.black.withOpacity(0.3),
                                                    Colors.black.withOpacity(0.1),
                                                    Colors.black.withOpacity(0.05),
                                                  ]
                                              )
                                          )
                                      ),
                                    )),
                                Positioned.fill(
                                  child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CustomText(
                                      text: "صلصات اللحوم",
                                      size: 40,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(color: white, boxShadow: [
                                    BoxShadow(
                                      color: red[50],
                                      // offset: Offset(4, 6),
                                      blurRadius: 20,
                                    )
                                  ]),
                                  child: Padding(
                                    padding: EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "images/salsa_ta5mes.png",
                                        width: width * 0.9,
                                        height: height * 0.25,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 70,
                                          width: width*.9,
                                          decoration: BoxDecoration(
                                            //borderRadius: BorderRadius.circular(20),
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(20),
                                                  bottomRight: Radius.circular(20)),
                                              gradient: LinearGradient(
                                                  begin: Alignment.bottomCenter,
                                                  end: Alignment.topCenter,
                                                  colors: [
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.7),
                                                    Colors.black.withOpacity(0.6),
                                                    Colors.black.withOpacity(0.5),
                                                    Colors.black.withOpacity(0.4),
                                                    Colors.black.withOpacity(0.3),
                                                    Colors.black.withOpacity(0.1),
                                                    Colors.black.withOpacity(0.05),
                                                  ]
                                              )
                                          )
                                      ),
                                    )),
                                Positioned.fill(
                                  child:Align(
                                    alignment: Alignment.bottomCenter,
                                    child: CustomText(
                                      text: "صلصات التغميس",
                                      size: 40,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ],
        /*   Padding(
                    padding: const EdgeInsets.only(bottom:8.0),
                    child: Container(
                      color: grey,
                        child: SizedBox(height: 1,width: width*.8,)
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/salsa.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/news.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return TestScreen();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                "images/offer.png",
                                width: 120,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Container(
                            color: grey,
                            child: SizedBox(height: 1,width: width*.8,)
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Image(image: ExactAssetImage('images/vegitables.png'),),
                          Image(image: ExactAssetImage('images/vegitables.png'),),
                          Image(image: ExactAssetImage('images/vegitables.png'),),
                        ],
                      ),

                    ],
                  ),*/

      ),

    );
  }
}

class CustomSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final bool hideTitleWhenExpanded;

  CustomSliverDelegate({
    @required this.expandedHeight,
    this.hideTitleWhenExpanded = true,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final appBarSize = expandedHeight - shrinkOffset;
    final cardTopPosition = expandedHeight / 2 - shrinkOffset;
    final proportion = 2 - (expandedHeight / appBarSize);
    final percent = proportion < 0 || proportion > 1 ? 0.0 : proportion;
    return SizedBox(
      height: expandedHeight + expandedHeight / 2,
      child: Stack(
        children: [
          SizedBox(
            height: appBarSize < kToolbarHeight ? kToolbarHeight : appBarSize,
            child: AppBar(
              actions: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.search,
                      color: white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return TestScreen();
                        }
                        ),);
                    }),
                IconButton(
                    icon: Icon(
                      Icons.add_shopping_cart,
                      color: white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context){
                          return TestScreen();
                        }
                        ),);
                    }),
              ],
              backgroundColor: blue_dark,
            /*  leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                },
              ),*/
              elevation: 0.0,
              title: Padding(
                padding: const EdgeInsets.only(top: 0.0, left: 12),
                child: Center(
                    child: CustomText(
                      text: "بورصة الجملة",
                      color: white,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ),
            ),

          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            top: cardTopPosition > 0 ? cardTopPosition : 0,
            bottom: 0.0,
            child: Opacity(
              opacity: percent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: some_yellow,
                  elevation: 10.0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.camera_alt,
                              color: white,
                              size: 30,
                            ),
                            onPressed: () {
                              return showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Center(
                                          child: CustomText(
                                              text: "ادخل الصورة المطلوبة")),
                                      content: Container(
                                        width: 240,
                                        height: 100,
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 30.0),
                                              child: Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    IconButton(
                                                        icon: Icon(
                                                          Icons.photo,
                                                          color: green,
                                                          size: 50,
                                                        ),
                                                        onPressed: () {}),
                                                    Padding(
                                                      padding:
                                                      const EdgeInsets.only(
                                                          left: 20.0,
                                                          top: 8),
                                                      child: CustomText(
                                                          text: "المعرض"),
                                                    )
                                                  ],
                                                ),
                                                //child: IconButton(icon: Icon(Icons.photo,color: green,size: 50,), onPressed: () {}),
                                              ),
                                            ),
                                            Container(
                                              child: Column(
                                                children: <Widget>[
                                                  IconButton(
                                                      icon: Icon(
                                                        Icons.camera_alt,
                                                        color: blue_dark,
                                                        size: 50,
                                                      ),
                                                      onPressed: () {}),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        left: 20.0, top: 8),
                                                    child: CustomText(
                                                        text: "الكاميرا"),
                                                  ),
                                                ],
                                              ),
                                              //child: IconButton(icon: Icon(Icons.camera_alt,color: blue_dark,size: 50,), onPressed: () {})
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            }),
                        Text(
                          "أضف صورة الطلب \nفي حالة عدم وجوده في المنتجات المعروضة",
                          maxLines: 2,
                          style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + expandedHeight / 2;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;

    /* NestedScrollView(
       headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
         return <Widget>[
           SliverAppBar(
             title: Center(child: CustomText(text:"بورصة الجملة",size: 24,color: white,)),
             backgroundColor:blue_dark,
             expandedHeight: 190.0,
             snap: true,
             floating: true,
             pinned: true,
             flexibleSpace: FlexibleSpaceBar(
               centerTitle: true,
               background: Column(
                 children: <Widget>[
                   Stack(
                     children: <Widget>[
                       Container(
                         height: 60.0,
                         child: TextField(
                           showCursor: false,
                           readOnly: true,
                           textAlign: TextAlign.center,
                           decoration: InputDecoration(
                             filled: true,
                             enabledBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Colors.white)),
                             focusedBorder: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Colors.white)),
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20),
                                 borderSide: BorderSide(color: Colors.white)),
                             hintText: "اضف صورة الطلب في حالة عدم وجوده معروض",
                             hintStyle: TextStyle(color: white,
                               fontSize: 12,
                               fontWeight: FontWeight.w800,),
                             hintMaxLines:2,
                             fillColor: some_yellow,
                             prefixIcon: Icon(Icons.camera_alt,
                               color: white,
                             ),
                           ),
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) {
                                   return TestScreen();
                                 },
                               ),
                             );
                           },
                         ),
                       ),
                     ],

                   )
                 ],
               ),
               title: Padding(
                 padding: const EdgeInsets.only(top:28.0),

               )
             ),
           )
         ];
       },
       body: Container(
         color: white,
         padding: EdgeInsets.all(10.0),
         child: Column(
           children: <Widget>[

             SizedBox(height: 20,),
             Expanded(
                 child: GridView.count(
                   crossAxisCount: 2,
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   children: _listItem.map((item) => Card(
                     color: Colors.transparent,
                     elevation: 0,
                     child: Container(
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           image: DecorationImage(
                               image: AssetImage(item),
                               fit: BoxFit.cover
                           )
                       ),
                       child: Transform.translate(
                         offset: Offset(50, -50),
                         child: Container(
                           margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               color: Colors.white
                           ),
                           child: Icon(Icons.bookmark_border, size: 15,),
                         ),
                       ),
                     ),
                   )).toList(),
                 )
             )
           ],
         ),
       ),
      );*/

    /*return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: PreferredSize(
          child: AppBar(

            backgroundColor: blue_dark,
            elevation: 0,
            leading: Icon(Icons.menu),
            title: Text("Home"),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: 36,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text("0")),
                ),
              )
            ],
          ),
          preferredSize: Size.fromHeight(200)),
      bottomNavigationBar: Bottom_Nav_Bar(),
      body: SafeArea(
        child: Container(
          color: white,
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[

              SizedBox(height: 20,),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Transform.translate(
                          offset: Offset(50, -50),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 65, vertical: 63),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                            ),
                            child: Icon(Icons.bookmark_border, size: 15,),
                          ),
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );*/
  }
}