import 'package:flutter/material.dart';

class CropsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crops'),
      ),
      body: Center(
        child: Text('Crops Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add Crop action
        },
        child: Icon(Icons.add),
      ),
    );
  }
}





