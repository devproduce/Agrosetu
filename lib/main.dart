import 'package:agrosetu/login/login.dart'; // Import the LoginPage
import 'package:agrosetu/screens/navbar.dart'; // Import the Navbar class
import 'package:agrosetu/providers/homescreen_provider.dart';
import 'package:agrosetu/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ChangeNotifierProvider(create: (_) => TabProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      home: const LoginPage(), // Set the LoginPage as the home screen
    );
  }
}
