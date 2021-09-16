import 'package:flutter/material.dart';
import 'package:flutter_playground/app_inject.dart';
import 'package:flutter_playground/modules/home/presentation/home_page.dart';
import 'package:stark/stark.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Stark.init([AppInject.dependencies]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}