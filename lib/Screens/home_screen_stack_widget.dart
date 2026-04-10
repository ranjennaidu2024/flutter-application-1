import 'package:flutter/material.dart';

class HomeScreenStackWidget extends StatefulWidget {
  const HomeScreenStackWidget({super.key});

  @override
  State<HomeScreenStackWidget> createState() => _HomeScreenStackWidgetState();
}

class _HomeScreenStackWidgetState extends State<HomeScreenStackWidget> {

  @override
  Widget build(BuildContext context) {
// The functional logic from your image:
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ), // Container
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.blue,
                ), // Container
                const Text('data test')
              ],
            ) // Stack
          ],
        ), // Column
      ), // Scaffold
    );
  }
}
