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
  Container _resetButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60),
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
      onTap: () {
        print('tıklandı');
      },
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
    return const Text(
      '99999',
      style: TextStyle(
        fontSize: 65,
        color: Color.fromARGB(255, 238, 255, 0),
      ),
    );
  }
}
