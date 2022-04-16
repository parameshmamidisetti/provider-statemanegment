import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myapp/provider/classprovider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Cowndown cowndown = Cowndown();
  @override
  void initState() {
    var counter = Provider.of<Cowndown>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      counter.counter();
      print("one");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("`buildcalled`");
    return Scaffold(
      appBar: AppBar(
        title: Consumer<Cowndown>(
          builder: (context, data, child) {
            return Text(data.value.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print("button pressed");
        cowndown.counter();
      }),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.alarm_sharp,
                size: 50,
              ),
              Consumer<Cowndown>(
                builder: (context, data, child) {
                  return Expanded(
                    child: Text(
                      "${data.value}",
                      style: TextStyle(fontSize: 60),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
