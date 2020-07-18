import 'package:flutter/material.dart';
import 'package:souq_app/scr/widgets/bottom_nav_bar.dart';
import 'package:souq_app/scr/widgets/custom_text.dart';

import '../commons.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("المنتجات")),
        backgroundColor: green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search,color: white,size: 30,), onPressed: (){}),
          IconButton(icon: Icon(Icons.add_shopping_cart,color: white,size: 30,), onPressed: (){}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(

              )
            ],
          )
        ],
      ),
      //bottomNavigationBar: Bottom_Nav_Bar(),
    );
  }
}
