import 'package:flutter/material.dart';
import 'cross_alignment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cross Alignment Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CrossAxisAlignmentDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}