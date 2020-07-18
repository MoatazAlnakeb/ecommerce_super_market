import 'package:flutter/material.dart';
import 'package:souq_app/scr/widgets/bottom_nav_bar.dart';
import 'package:souq_app/scr/widgets/custom_text.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar: AppBar(),
        body:

        Container(
          color: Colors.white,
          child: Center(child: CustomText(text:"Test Screen",size: 22,)),
        )
    );
  }
}
