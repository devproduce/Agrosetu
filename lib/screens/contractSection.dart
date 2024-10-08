import 'package:flutter/material.dart';

class ContractsSection extends StatelessWidget {
  const ContractsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center( child: Text(
          'Contracts Details:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),), 
        SizedBox(height: 10),
        // Add your contracts detail UI here
        Center(
          child: Text('Here will be the contracts details content.'),
        ) 
      ],
    );
  }
}
