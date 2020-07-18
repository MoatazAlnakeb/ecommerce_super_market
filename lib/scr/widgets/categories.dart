import 'package:flutter/material.dart';
import 'package:souq_app/scr/models/category.dart';
import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "العطارة", image: "3tara.png"),
  Category(name: "البقوليات", image: "bocoliat.png"),
  Category(name: "المجمدات", image: "freez.png"),
  Category(name: "المخبوزات", image: "ma5bzat.png"),
  Category(name: "الخضراوات", image: "vegitables.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.20,
      child: ListView.builder(
        itemCount: categoriesList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
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
                            "images/${categoriesList[index].image}",
                            width: 220,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: 35,
                          width: width,
                          decoration: BoxDecoration(
                           // borderRadius: BorderRadius.circular(90),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
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
                        text: categoriesList[index].name,
                        size: 20,
                        color: white,
                      ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
