import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorExampleScreen(),
    );
  }
}

class ColorExampleScreen extends StatelessWidget {
  const ColorExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color and Colors Class Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Using predefined Colors class
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            child: const Center(
                child: Text('Blue', style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(height: 20),
          // Using Color with hex color code
          Container(
            width: 100,
            height: 100,
            color: const Color(0xFF42A5F5), // Hex color code for blue[400]
            child: const Center(
                child: Text('Hex Blue',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900))),
          ),
          const SizedBox(height: 20),
          // Using Colors class with opacity
          Container(
            width: 100,
            height: 100,
            color: Colors.red.withOpacity(.5),
            child: const Center(
                child: Text('Red 50%', style: TextStyle(color: Colors.white))),
          ),
          const SizedBox(height: 20),
          // Using custom RGB color
          Container(
            width: 100,
            height: 100,
            color: const Color.fromRGBO(255, 215, 0, 1.0), // RGB for Gold color
            child: const Center(
                child: Text('Gold', style: TextStyle(color: Colors.black))),
          ),
          const SizedBox(height: 20),
          // Using ARGB with transparency
          Container(
            width: 100,
            height: 100,
            color:
                const Color.fromARGB(127, 0, 128, 0), // Green with transparency
            child: const Center(
                child:
                    Text('Green 50%', style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
