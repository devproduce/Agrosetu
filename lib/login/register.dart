import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  DateTime? _selectedDate;
  String? _role = 'Farmer'; // Default role selection for radio button

  void _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    setState(() {
      _selectedDate = pickedDate;
    });
    }

  void _register() {
    // Registration logic can be added here
    print("First Name: ${_firstNameController.text}");
    print("Last Name: ${_lastNameController.text}");
    print("Email: ${_emailController.text}");
    print("Password: ${_passwordController.text}");
    print("Date of Birth: ${_selectedDate?.toLocal()}".split(' ')[0]);
    print("Role: $_role");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // First Name
                TextField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Last Name
                TextField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Date of Birth
                TextField(
                  readOnly: true,
                  onTap: () => _selectDate(context),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_today),
                    labelText: _selectedDate == null
                        ? 'Date of Birth'
                        : 'Date of Birth: ${_selectedDate?.toLocal()}'.split(' ')[0],
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Email
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Password
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Role selection using horizontal Radio buttons
                const Text(
                  'Select Role:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Farmer',
                          groupValue: _role,
                          onChanged: (String? value) {
                            setState(() {
                              _role = value;
                            });
                          },
                        ),
                        const Text('Farmer'),
                      ],
                    ),
                    const SizedBox(width: 20), // Space between options
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Contractor',
                          groupValue: _role,
                          onChanged: (String? value) {
                            setState(() {
                              _role = value;
                            });
                          },
                        ),
                        const Text('Contractor'),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Register Button
                ElevatedButton(
                  onPressed: _register,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                    backgroundColor: Colors.lightBlue,
                  ),
                  child: const Center(
                    child: Text('Register', style: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(height: 20),

                // Already a user? Sign in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already a user?'),
                    TextButton(
                      onPressed: () {
                        // Handle sign-in navigation action
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
