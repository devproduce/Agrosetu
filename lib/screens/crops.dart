import 'package:flutter/material.dart';

class CropsScreen extends StatelessWidget {
  const CropsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crops'),
      ),
      body: const Center(
        child: Text('Crops Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Crop action
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}





