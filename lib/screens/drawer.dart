import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatefulWidget {
  const HomeScreenDrawer({super.key});

  @override
  State<HomeScreenDrawer> createState() => _HomeScreenDrawerState();
}

class _HomeScreenDrawerState extends State<HomeScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    const backgroundImage = 'assets/images/farmer.png';

    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: 200, // Height of the UserAccountsDrawerHeader
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(backgroundImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  height: 200,
                  color: Colors.black.withOpacity(0.3), // Optional: add a tint
                ),
              ),
              UserAccountsDrawerHeader(
                accountName: Text(
                  'John',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
                accountEmail: Text(
                  "Farmer",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.7),
                      ),
                ),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    backgroundImage: const AssetImage(backgroundImage),
                  ),
                  onTap: () {},
                ),
                decoration: const BoxDecoration(
                  color: Colors.transparent, // Transparent to show the blurred image
                ),
              ),
            ],
          ),

          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              "Settings",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.primary,
            ),
            title: Text(
              "Logout",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            onTap: () async {
              // Add your logout functionality here
            },
          ),
          //SizedBox(height: 450),
          
        ],
      ),
    );
  }
}
