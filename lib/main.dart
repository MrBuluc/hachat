import 'package:flutter/material.dart';
import 'package:hachat/ui/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HACHAT',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(226, 10, 22, 1),
          hintColor: Colors.black,
          focusColor: const Color.fromRGBO(226, 10, 22, 1)),
      home: const LoginPage(),
    );
  }
}
