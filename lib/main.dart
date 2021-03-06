import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/View/HomePage/homePage.dart';
import 'package:task/View/UserDetail/userDetail.dart';
import 'package:task/Bindings/myBindings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  //MaterialApp by GetX
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      getPages: [ 
        GetPage( name: "/", page: () => HomePage(),binding: MyBinding()),
        GetPage( name: "/UserDetail", page: () => UserDetail(),binding: MyBinding()),
      ],
    );
  }
}