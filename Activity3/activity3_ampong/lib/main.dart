import 'package:flutter/material.dart';
import 'edge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgeInsets Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const EdgeInsetsDemo(), 
      debugShowCheckedModeBanner: false,
    );
  }
}