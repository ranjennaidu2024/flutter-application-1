import 'package:flutter/material.dart';

class HomeScreenCircularAvatar extends StatefulWidget {
  const HomeScreenCircularAvatar({super.key});

  @override
  State<HomeScreenCircularAvatar> createState() => _HomeScreenCircularAvatarState();
}

class _HomeScreenCircularAvatarState extends State<HomeScreenCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                minRadius: 50,
                maxRadius: 100,
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-vector/icono-perfil-simple-color-blanco-icon_1076610-50204.jpg',
                ),
              ), // CircleAvatar
            ), // Center
            const SizedBox(height: 100),
            const Divider(
              color: Colors.black,
              thickness: 2,
              height: 2,
            ), // Divider
            const SizedBox(height: 100),
            const Center(
              child: CircleAvatar(
                minRadius: 50,
                maxRadius: 100,
                backgroundColor: Colors.amber,
                // You can add a different image URL here if desired
                backgroundImage: NetworkImage(
                  'https://img.freepik.com/premium-vector/icono-perfil-simple-color-blanco-icon_1076610-50204.jpg',
                ),
              ), // CircleAvatar
            ), // Center
          ],
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}