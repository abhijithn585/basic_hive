import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import './screens/home.dart';

void main(List<String> args) async {
  //initialise hive
  await Hive.initFlutter();

  //open box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Shared Preference'))),
        body: HomePage(),
      ),
    );
  }
}
