import 'package:flutter/material.dart';
import 'sign_up_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue, // Warna biru pada appBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome to Ehsan - E-Wallet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Warna biru pada judul
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            // Username Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.blue), // Warna label biru
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Border biru saat fokus
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Password Field
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.blue), // Warna label biru
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue), // Border biru saat fokus
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            // Login Button dengan warna biru dan teks putih
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman utama jika login berhasil
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Teks putih pada tombol
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 10),
            // Link untuk menuju ke halaman Sign Up dengan teks biru
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              child: const Text(
                'Don\'t have an account? Sign up',
                style: TextStyle(
                  color: Colors.blue, // Teks biru untuk link
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
