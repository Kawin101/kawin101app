import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter-Kawinphop 633410142-5',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Begining's Flutter App (935309_Lab01_6-1-2566)"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
              context: context,
              color: Colors.green,
              insideText: "1. นางสาวเพชรสุดา จำปาอ่อน  633410023-3 "),
          Card(
              context: context,
              color: Colors.yellow,
              insideText: "2. นางสาวธิดารัตน์ มาทา 633410077-"),
          Card(
              context: context,
              color: Colors.red,
              insideText: "3. นายพงศ์ภรณ์ ถนอมในเมือง 633410082-7"),
          Card(
              context: context,
              color: Colors.black12,
              insideText: "4. นายกวินภพ ชมนิกร 633410142-5"),
        ],
      ),
    );
  }

  Widget Card(
      {required BuildContext context,
      required Color color,
      required String insideText}) {
    return Container(
      width: 250,
      color: Colors.black12,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        name: insideText,
                      )));
        },
        child: Column(
          children: [
            Image.asset(
              "images/001.jpg",
              width: 200,
              fit: BoxFit.cover,
            ),
            Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                //margin: EdgeInsets.all(10),
                color: color,
                child: Text(insideText)),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.name});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Text(name),
        ));
  }
}
