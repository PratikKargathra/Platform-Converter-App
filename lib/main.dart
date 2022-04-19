import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'sorces.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(const Duration(microseconds: 10), (time){setState(() {
    });});
  }

  @override
  Widget build(BuildContext context) {
    return (isIOS)?CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const Homepage(),
      },
    ):MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => const Homepage(),
      },
    );
  }
}


