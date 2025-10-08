import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState(); // <- Doğru imza
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;
    setState(() {}); // <- setState çağrısı eklendi
  }

  VoidCallback? _resetCounter() {
    _counter = 0;
    setState(() {}); // <- setState çağrısı eklendi
    return null;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        appBar: _appBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('assets/image/gorsel.png', width: 350),
                  Positioned(
                    top: 55,
                    right: 80,
                    child: _counterText(),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 118,
                    child: _gestureDec(),
                  ),
                  Positioned(
                    top: 180,
                    right: 85,
                    child: _resetButton(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- Senin yardımcı widgetların, aynen korundu ---
  GestureDetector _resetButton() {
    return GestureDetector(
      onTap: _resetCounter,
      child: Container(
       width: 40,
       height: 40,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
       )
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      centerTitle: true,
      title: const Text(
        'Zikirmatik',
        style: TextStyle(color: Color.fromARGB(255, 238, 255, 0)),
      ),
    );
  }

  GestureDetector _gestureDec() {
    return GestureDetector(
      onTap: _incrementCounter,
      child: Container(
        width: 115,
        height: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
        ),
      ),
    );
  }

  Text _counterText() {
    return Text(
      "$_counter",
      style: const TextStyle(
        fontSize: 65,
        color: Color.fromARGB(255, 238, 255, 0),
      ),
    );
  }
}
