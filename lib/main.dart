import 'package:flutter/material.dart';
import 'package:market_app/views/pages/00_intro/splash.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Splash(),
 );
  }

}