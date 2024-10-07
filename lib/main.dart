import 'package:agrosetu/login/login.dart';
import 'package:agrosetu/providers/homescreen_provider.dart';
import 'package:agrosetu/screens/homescreen.dart';
import 'package:agrosetu/screens/navbar.dart';
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
      child: MyApp(),
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

      home: Navbar(), 
    );
  }
}
