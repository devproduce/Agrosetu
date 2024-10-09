import 'package:agrosetu/login/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? _errorMessage;

  void _login() {
    setState(() { 
      _errorMessage = null;
    });

    String username = _usernameController.text;
    String password = _passwordController.text;

    // Simulate user authentication (replace with actual logic)
    if (username != 'correctUsername') {
      setState(() {
        _errorMessage = 'User does not exist';
      });
    } else if (password != 'correctPassword') {
      setState(() {
        _errorMessage = 'Password does not match';
      });
    } else {
      // Proceed with successful login
      setState(() {
        _errorMessage =
            'Login successful'; // Optional: You can remove this line
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Back text
              const Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Username input
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Password input
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),

              // Error message display (if any)
              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),

              // Forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      // forgot password action
                    },
                    child: const Text('Forgot Password?'),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Login button
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 40),
                  backgroundColor: Colors.lightBlue,
                ),
                child: const Center(
                    child:
                        Text('Login', style: TextStyle(color: Colors.black))),
              ),
              const SizedBox(height: 20),

              // Google Sign-In Button (moved below)

              // Register Now link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('New user?'),
                  TextButton(
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage()),
                    );
                    },
                    child: const Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton.icon(
                onPressed: () {
                  // Handle Google Sign-In action
                },
                icon: const Icon(Icons.g_translate, color: Colors.black),
                label: const Text(
                  'Sign in with Google',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // Background color set to white
                  foregroundColor: Colors.black, // Text and icon color
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 0, // Remove shadow effect
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Remove circular border
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Facebook Sign-In Button (moved below)
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Facebook Sign-In action
                },
                icon: const Icon(Icons.facebook, color: Colors.white),
                label: const Text('Sign in with Facebook'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Background color set to solid blue
                  foregroundColor: Colors.white, // Text and icon color
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 0, // Remove shadow effect
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Remove circular border
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
