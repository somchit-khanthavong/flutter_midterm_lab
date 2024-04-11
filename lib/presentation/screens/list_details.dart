import 'package:flutter/material.dart';
import 'package:midterm_project_lab/domain/list_model.dart';

class ListDetails extends StatelessWidget {
  // Constructor for ListDetails widget
  const ListDetails({super.key, required this.item});

  // Instance variable to hold the item data
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Customizing app bar
        backgroundColor: Colors.green, // Setting background color
        leading: IconButton(
          // Adding back button
          icon: const Icon(Icons.arrow_back), // Back arrow icon
          color: Colors.white, // Setting icon color
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
        ),
        title: const Text(
          "Wild Animal in Laos", // Title text
          style: TextStyle(
            color: Colors.white, // Setting title text color
            fontWeight: FontWeight.bold, // Making title text bold
          ),
        ),
        centerTitle: true, // Centering title horizontally
      ),
      // make app screen scrollable
      body: SingleChildScrollView(
        // Centering content vertically
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20.0), // Adding padding around container
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Aligning content at the start (top) of the column
              crossAxisAlignment: CrossAxisAlignment.start, // Aligning content at the start (left) of the column
              children: [
                // Displaying image of the item
                Image.asset("assets/images/${item.img}"),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15.0), // Adding vertical padding
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start, // Aligning content at the start (top) of the column
                    children: [
                      // Displaying name of the item
                      Text(
                        item.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, // Making text bold
                          fontSize: 20.0, // Setting font size
                        ),
                      ),
                      const SizedBox(height: 5.0), // Adding space between widgets
                      // Displaying description of the item
                      Text(
                        item.descriptions,
                        textAlign: TextAlign.justify, // Justifying text
                      ),
                      const SizedBox(height: 5.0), // Adding space between widgets
                      // Displaying location of the item
                      Text(
                        "Location : ${item.location}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold, // Making text bold
                          fontSize: 15.0, // Setting font size
                        ),
                        textAlign: TextAlign.center, // Centering text horizontally
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
