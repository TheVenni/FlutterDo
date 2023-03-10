import 'package:flutter/material.dart';
import 'package:flutter_do/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {

  // init the hive
  await Hive.initFlutter();
  
  // open a box
  var box = await Hive.openBox('FlutterBox');

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }

}