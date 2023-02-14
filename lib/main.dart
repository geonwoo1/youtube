import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube/src/app.dart';
import 'package:youtube/src/binding/init_binding.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme:AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black)
        ) ,
        primarySwatch: Colors.blue,
      ),
      initialBinding:InitBinding(),
      home:App(),
    );
  }
}

