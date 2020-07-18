import 'package:flutter/material.dart';

import '../commons.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onTap;
  final Color color;
  String _errorMessage(String str) {
    switch (hint) {
      case 'اختر المحافظة':
        return 'برجاء ادخال اسم المحافظة';
      case 'اخترالمدينة':
        return 'برجاء ادخال اسم المدينة';
      case 'اخترالحي':
        return 'برجاء ادخال اسم الحي';
    }
  }

  CustomTextField(
      {@required this.onTap,this.icon, @required this.hint,this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return _errorMessage(hint);
            // ignore: missing_return
          }
        },
        showCursor: false,

        onTap: onTap,
        readOnly: true,
        textAlign: TextAlign.end,
        decoration: InputDecoration(
          filled: true,
          //fillColor: kSecondaryColor,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.white)),
          hintText: hint,
            hintStyle: TextStyle(color: white,fontSize: 18,fontWeight: FontWeight.w800),
            fillColor: color,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(icon,
              color: white,
            ),
          ),
        ),
      ),
    );
  }
}


/*class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onTap;

  const CustomTextField({@required this.hint,@required this.icon,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      showCursor: false,
      readOnly: true,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        filled: true,
        //fillColor: kSecondaryColor,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white)),
        hintText:hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(icon),
        ),
      ),
    );
  }
}*/







/*

TextFormField(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) {
return Branches_Details_Screen();
},
),
);
},
showCursor: false,
readOnly: true,
textAlign: TextAlign.end,
decoration: InputDecoration(
filled: true,
//fillColor: kSecondaryColor,
enabledBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20),
borderSide: BorderSide(color: Colors.white)),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(20),
borderSide: BorderSide(color: Colors.white)),
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(20),
borderSide: BorderSide(color: Colors.white)),
hintText: 'مكان التسليم',
prefixIcon: Padding(
padding: const EdgeInsets.only(left: 16.0),
child: Icon(
Icons.search,
color: Colors.deepOrangeAccent,
),
),
),
),*/
