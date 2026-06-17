import 'package:flutter/material.dart';

class Pavlova extends StatelessWidget {
  const Pavlova({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ampong_Activity1'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              
              height: 200,
              child: Center(
                child: Image.asset('lib/assets/Pavlova.png'),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: const [
                    Text(
                      'Strawberry Pavlova',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. "
                      "It has a crisp crust, soft inside topped with fruit and cream.",
                      style: TextStyle(fontSize: 14, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(child: buildRatingRow()),
            const SizedBox(height: 30),
            buildRowTabs(),
          ],
        ),
      ),
    );
  }

    Widget buildRatingRow() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: List.generate(
              5,
              (index) => Icon(
                index < 3 ? Icons.star : Icons.star_border,
                color: Colors.yellow,
                size: 20,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            '90 Reviews',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      );
    }

    Widget buildIconTab(IconData icon, String label, String value) {
      return Column(
        children: [
          Icon(icon, color: Colors.yellow),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(value), 
        ],
      );
    }

    Widget buildRowTabs() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconTab(Icons.kitchen, 'PREP:', '25 min'),
          buildIconTab(Icons.timer, 'COOK:', '1 hr'),
          buildIconTab(Icons.restaurant, 'FEEDS:', '4-6'),
        ],
      );
    }
}