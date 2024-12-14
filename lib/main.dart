

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_5/Pages/HomePage.dart';
import 'package:flutter_application_5/Pages/SingleItemPage.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  @override
    void initstate(){
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff232227)
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => HomePage(),
        "Singleitempage":(context)=> SingleItemPage(),
      },
    );
  }


}