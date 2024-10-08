import 'package:flutter/material.dart';

class MyContractsScreen extends StatelessWidget {
  const MyContractsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Contracts'),
      ),
      body: const Center(
        child: Text('My Contracts Screen'),
      ),
    );
  }
}
