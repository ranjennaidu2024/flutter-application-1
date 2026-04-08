import 'dart:developer';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            log('Button Pressed');
          },
          child: Container(
            height: 50,
            width: 200,
            padding: const EdgeInsets.only(top: 15, left: 50),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                ),
              ],
            ), // BoxDecoration
            child: const Text('Login Button'),
          ), // Container
        ), // GestureDetector
      ), // Scaffold
    ); // SafeArea
  }
}