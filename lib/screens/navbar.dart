import 'package:agrosetu/providers/homescreen_provider.dart';
import 'package:agrosetu/screens/contracts.dart';
import 'package:agrosetu/screens/homescreen.dart';
import 'package:agrosetu/screens/support.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<NavigationProvider>(
        builder: (context, navProvider, _) {
          // Display the content of the selected screen
          return IndexedStack(
            index: navProvider.currentIndex,
            children: const [
              HomeScreen(),
              MyContractsScreen(),
              SupportScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<NavigationProvider>(
        builder: (context, navProvider, _) {
          return BottomNavigationBar(
            currentIndex: navProvider.currentIndex,
            onTap: (index) {
              navProvider.setIndex(index); // This will switch the screen
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.work), label: 'My Contracts'),
              BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support'),
            ],
          );
        },
      ),
    );
  }
}
