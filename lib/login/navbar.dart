// screens/navbar.dart
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {  // Ensure class is named 'Navbar'
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
