import 'package:flutter/material.dart';

class ContractsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center( child: Text(
          'Contracts Details:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),), 
        const SizedBox(height: 10),
        // Add your contracts detail UI here
        Center(
          child: Text('Here will be the contracts details content.'),
        ) 
      ],
    );
  }
}
