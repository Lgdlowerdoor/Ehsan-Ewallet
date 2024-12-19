import 'package:flutter/material.dart';
import 'package:myapp/screens/login_page.dart';

void main() {
  runApp(const EhsanApp());
}

class EhsanApp extends StatelessWidget {
  const EhsanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ehsan - E-Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LoginPage(),
    );
  }
}
