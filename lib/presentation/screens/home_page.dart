import 'package:flutter/material.dart';
import 'package:midterm_project_lab/data/list_item.dart'; // Importing the list of items
import 'package:midterm_project_lab/presentation/screens/list_details.dart'; // Importing the list details screen
import 'package:midterm_project_lab/presentation/widgets/list_box.dart'; // Importing the list box widget

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key}); // Constructor for MyHomePage widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wild Animal in Laos', // Setting the title of the app bar
          style: TextStyle(
            color: Colors.white, // Setting text color
            fontWeight: FontWeight.bold, // Setting text font weight
          ),
        ),
        backgroundColor: Colors.green, // Setting the background color of the app bar
      ),
      body: ListView.builder(
        itemCount: items.length, // Number of items in the list
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListBox(
              item: items[index], // Passing the item data to ListBox widget
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ListDetails(item: items[index]); // Navigating to ListDetails screen with item details
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
