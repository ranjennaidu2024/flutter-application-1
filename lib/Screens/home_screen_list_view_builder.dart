import 'package:flutter/material.dart';

class HomeScreenListViewBuilder extends StatefulWidget {
  const HomeScreenListViewBuilder({super.key});

  @override
  State<HomeScreenListViewBuilder> createState() => _HomeScreenListViewBuilderState();
}

class _HomeScreenListViewBuilderState extends State<HomeScreenListViewBuilder> {
  // Data list from the image
  List<String> list = ['John', 'Jane', 'Adam'];
  
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    // Dynamically setting the title from the list
                    title: Text(list[index]),
                    subtitle: const Text("View or Edit User Profile"),
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: ClipOval(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTi2haw1278i40sszGwCvy7LKP3j2KqLTnPJg&s",
                          fit: BoxFit.cover,
                          width: 40,
                          height: 40,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.person, color: Colors.grey);
                          },
                        ),
                      ),
                    ),
                    trailing: const Icon(Icons.fork_right),
                    onTap: () {
                      // Action for when a user is tapped
                    },
                  ); // ListTile
                },
              ), // ListView.builder
            ), // Expanded
          ],
        ), // Column
      ), // Scaffold
    ); // SafeArea
  }
}