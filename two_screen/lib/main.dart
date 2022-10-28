import 'package:flutter/material.dart';
import 'package:two_screen/Screen_one.dart';

void main(){
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: const MyHome(),
    //home: const Kucelis(),
    //home: const Assignment(),
    home:  screenOne()
  ));
}