import 'package:flutter/material.dart';
import 'package:myapp/homescreen.dart';
import 'package:myapp/provider/classprovider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
      ChangeNotifierProvider(create: (context) => Cowndown(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
