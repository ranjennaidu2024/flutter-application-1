import 'package:flutter/material.dart';

class HomeScreenListTileWidget extends StatefulWidget {
  const HomeScreenListTileWidget({super.key});

  @override
  State<HomeScreenListTileWidget> createState() => _HomeScreenListTileWidgetState();
}

class _HomeScreenListTileWidgetState extends State<HomeScreenListTileWidget> {
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: const Text("User Profile"),
              subtitle: const Text("View or Edit User Profile"),
              leading: CircleAvatar(
                // Use an errorListener or background image check
                backgroundColor: Colors.grey[300],
                child: ClipOval(
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi2haw1278i40sszGwCvy7LKP3j2KqLTnPJg&s",
                    fit: BoxFit.cover,
                    width: 40,
                    height: 40,
                    // This prevents the app from crashing if the URL is broken
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.person, color: Colors.grey);
                    },
                  ),
                ),
              ),
              trailing: const Icon(Icons.fork_right),
            )
          ],
        ),
      ),
    );
  }
}