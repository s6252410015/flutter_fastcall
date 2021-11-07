import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/views/listfood_new_ui.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListfoodNewUI(),
       theme: ThemeData(
         fontFamily: 'Kanit',
       ),
    )
  );
  
}