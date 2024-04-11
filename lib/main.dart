import 'package:flutter/material.dart';
import 'package:midterm_project_lab/presentation/screens/home_page.dart';

// Main entry point of the application
void main() {
  // Run the application
  runApp(const MyApp());
}

// MyApp class, a StatelessWidget representing the root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Build method for building the widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application title
      title: 'Flutter Demo',
      // Theme data for the entire application
      theme: ThemeData(
        // Custom color scheme with a deep purple seed color
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // Using Material 3 design language
        useMaterial3: true,
      ),
      // Home page of the application
      home: const MyHomePage(),
    );
  }
}
