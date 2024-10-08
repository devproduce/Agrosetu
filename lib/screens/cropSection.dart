import 'package:flutter/material.dart';

class CropSection extends StatelessWidget {
  const CropSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child:Text(
          'Crops Details:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ) ,
        ) ,
        SizedBox(height: 10),
        // Add your crops detail UI here
        Center(
          child: Text('Here will be the crops details content.'),
        ) ,
      ],
    );
  }
}
