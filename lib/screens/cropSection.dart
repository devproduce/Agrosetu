import 'package:flutter/material.dart';

class CropSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child:Text(
          'Crops Details:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ) ,
        ) ,
        const SizedBox(height: 10),
        // Add your crops detail UI here
        const Center(
          child: Text('Here will be the crops details content.'),
        ) ,
      ],
    );
  }
}
