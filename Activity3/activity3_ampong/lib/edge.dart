import 'package:flutter/material.dart';

class EdgeInsetsDemo extends StatelessWidget {
  const EdgeInsetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ampong_EdgeInsets'),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(
                child: Container(
                  height: 75,
                  width: 150,
                  color: const Color.fromARGB(255, 245, 24, 47),
                  padding: const EdgeInsets.all(30),
                  child: const Text(
                    'EdgeInsets.all(30)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
                    textAlign: TextAlign.center, 
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Container(
                  height: 40,
                  width: 600,
                  color: const Color.fromARGB(255, 243, 223, 43),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: const Text(
                    'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center, 
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Container(
                  height: 50,
                  width: 325,
                  color: const Color.fromARGB(255, 24, 153, 245),
                  padding: const EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20),
                  child: const Text(
                    'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                    textAlign: TextAlign.center, 
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Container(
                  height: 80,
                  width: 250,
                  color: const Color.fromARGB(255, 18, 153, 23),
                  padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                  child: const Text(
                    'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}