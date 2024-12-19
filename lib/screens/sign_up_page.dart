import 'package:flutter/material.dart';
import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        backgroundColor: Colors.blue, // Warna biru pada appBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create an Account',
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
            // Sign Up Button dengan warna biru dan teks putih
            ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman login setelah sign up berhasil
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, // Teks putih pada tombol
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 10),
            // Link untuk kembali ke halaman Login dengan teks biru
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman login
              },
              child: const Text(
                'Already have an account? Login',
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
