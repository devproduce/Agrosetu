import 'package:agrosetu/screens/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:agrosetu/providers/homescreen_provider.dart';
import 'cropSection.dart';
import 'contractSection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        child: HomeScreenDrawer(),
      ),
      appBar: AppBar(
        title: const Text('Home Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              // Inbox action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Time-based greeting
            Text(
              _getGreeting(),
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),

            // Username
            Consumer<UserProvider>(
              builder: (context, userProvider, _) {
                return Text(
                  'Hello, ${userProvider.username}!',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),

            // Crops and Contracts as Tabs
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<TabProvider>().selectTab('Crops');
                  },
                  child: Consumer<TabProvider>(
                    builder: (context, tabProvider, _) {
                      return Text(
                        'Crops',
                        style: TextStyle(
                          fontSize: 24,
                          color: tabProvider.selectedTab == 'Crops'
                              ? Colors.green[700]
                              : Colors.black54,
                          fontWeight: tabProvider.selectedTab == 'Crops'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<TabProvider>().selectTab('Contracts');
                  },
                  child: Consumer<TabProvider>(
                    builder: (context, tabProvider, _) {
                      return Text(
                        'Contracts',
                        style: TextStyle(
                          fontSize: 24,
                          color: tabProvider.selectedTab == 'Contracts'
                              ? Colors.green[700]
                              : Colors.black54,
                          fontWeight: tabProvider.selectedTab == 'Contracts'
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Content based on selected tab
            Expanded(
              child: Consumer<TabProvider>(
                builder: (context, tabProvider, _) {
                  if (tabProvider.selectedTab == 'Crops') {
                    return const CropSection();
                  } else {
                    return const ContractsSection();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to determine greeting based on time of day
  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
