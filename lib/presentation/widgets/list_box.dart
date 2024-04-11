import 'package:flutter/material.dart';
import 'package:midterm_project_lab/domain/list_model.dart';

// Widget for displaying a list item
class ListBox extends StatelessWidget {
  // Constructor for ListBox widget
  const ListBox({super.key, required this.item});

  // Required parameter: Item object representing the data to be displayed
  final Item item;

  // Build method for building the widget
  @override
  Widget build(BuildContext context) {
    return Container(
      // Container to hold the card
      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0.0),
      height: 140, // Fixed height for the container
      child: Card(
        // Card widget for visual representation
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Widget to display the item's image
            Image.asset(
              "assets/images/${item.img}",
            ),
            // Expanded widget to occupy remaining space
            Expanded(
              child: Container(
                // Container for text content
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Display item name with bold style
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Display item description with limited lines and centered alignment
                    Text(
                      item.descriptions,
                      style: const TextStyle(
                        fontSize: 13.0,
                      ),
                      maxLines: 4,
                      textAlign: TextAlign.center,
                    ),
                    // Option to read more details
                    const Text(
                      "Read more",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
