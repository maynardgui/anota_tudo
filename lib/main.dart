import 'package:flutter/material.dart';
import 'package:anota_tudo/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //start the hive
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.lightBlue),
    );
  }
}
