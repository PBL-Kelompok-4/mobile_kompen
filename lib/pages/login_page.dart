import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo and Title Section
              Column(
                children: [
                  Text(
                    'Sistem Kompen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Mahasiswa',
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                  ),
                ],
              ),
              SizedBox(height: 40),

              // Username Input Field
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline, color: Colors.deepPurple),
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Password Input Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.deepPurple),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Admin Login Link
              TextButton(
                onPressed: () {
                  // Navigate to Admin login or toggle user type
                },
                child: Text(
                  'Login sebagai? Admin',
                  style: TextStyle(fontSize: 16, color: Colors.orange),
                ),
              ),
              SizedBox(height: 24),

              // Login Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              SizedBox(height: 16),

              // Assistance Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tidak bisa login?'),
                  TextButton(
                    onPressed: () {
                      // Navigate to help page or show help dialog
                    },
                    child: Text(
                      'Bantuan',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),

              // Footer Logos
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo_polinema.png', // Update with actual asset path
                    height: 50,
                  ),
                  SizedBox(width: 16),
                  Image.asset(
                    'assets/logo_jti.png', // Update with actual asset path
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
