import 'package:flutter/material.dart';
import 'package:ordering_food_app/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Monserrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (() {
            print('pressed go back');
          }),
          icon: Icon(
            Icons.arrow_back,
            semanticLabel: 'go back',
            size: 27,
            color: black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('pressed search');
            },
            icon: Icon(
              Icons.search,
              size: 27,
              semanticLabel: 'search',
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
