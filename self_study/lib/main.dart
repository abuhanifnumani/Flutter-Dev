import 'package:flutter/material.dart';

import 'MyHomePage.dart';
import 'ListView_ContactList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      home: listview(),
      //home: const MyHomePage(),
      //home: const MyHomePage(),
    );
  }
}
