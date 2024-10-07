import 'package:agrosetu/login/register.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
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
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Back text
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // Username input
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              // Password input
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Error message display (if any)
              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    _errorMessage!,
                    style: TextStyle(color: Colors.red),
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
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Login button
              ElevatedButton(
                onPressed: _login,
                child: Center(
                    child:
                        Text('Login', style: TextStyle(color: Colors.black))),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  backgroundColor: Colors.lightBlue,
                ),
              ),
              SizedBox(height: 20),

              // Google Sign-In Button (moved below)

              // Register Now link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New user?'),
                  TextButton(
                    onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                    },
                    child: Text(
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
                icon: Icon(Icons.g_translate, color: Colors.black),
                label: Text(
                  'Sign in with Google',
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.white, // Background color set to white
                  foregroundColor: Colors.black, // Text and icon color
                  minimumSize: Size(double.infinity, 50),
                  elevation: 0, // Remove shadow effect
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Remove circular border
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Facebook Sign-In Button (moved below)
              ElevatedButton.icon(
                onPressed: () {
                  // Handle Facebook Sign-In action
                },
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text('Sign in with Facebook'),
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.blue, // Background color set to solid blue
                  foregroundColor: Colors.white, // Text and icon color
                  minimumSize: Size(double.infinity, 50),
                  elevation: 0, // Remove shadow effect
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Remove circular border
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
