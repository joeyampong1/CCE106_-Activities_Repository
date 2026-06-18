import 'package:flutter/material.dart';

class CrossAxisAlignmentDemo extends StatelessWidget {
  const CrossAxisAlignmentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TASK 4 - Ampong',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              // ========== MAIN AXIS ALIGNMENT (ROW) ==========
              // MainAxisAlignment.center (Row)
              const SizedBox(height: 300),
              Center(child: _buildSectionTitle('MainAxisAlignment.center')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceAround (Row)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceAround')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceBetween (Row)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceBetween')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceEvenly (Row)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceEvenly')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.start (Row)
              Center(child: _buildSectionTitle('MainAxisAlignment.start')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.end (Row)
              Center(child: _buildSectionTitle('MainAxisAlignment.end')),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: _buildColoredBoxes(),
              ),
              const SizedBox(height: 350),

              // ========== CROSS AXIS ALIGNMENT (ROW) ==========
              // CrossAxisAlignment.start (Row)
              Center(child: _buildSectionTitle('CrossAxisAlignment.start')),
              const SizedBox(height: 10),
              Container(
                height: 160,
                color: Colors.grey[50],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.end (Row)
              Center(child: _buildSectionTitle('CrossAxisAlignment.end')),
              const SizedBox(height: 10),
              Container(
                height: 160,
                color: Colors.grey[50],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: _buildColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.baseline (Row)
              Center(child: _buildSectionTitle('CrossAxisAlignment.baseline')),
              const SizedBox(height: 10),
              Container(
                height: 160,
                color: Colors.grey[50],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, 
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      color: Colors.red,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      color: Colors.yellow,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.center (Row)
              Center(child: _buildSectionTitle('CrossAxisAlignment.center')),
              const SizedBox(height: 10),
              Container(
                height: 160,
                color: Colors.grey[50],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _buildColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.stretch (Row)
              Center(child: _buildSectionTitle('CrossAxisAlignment.stretch')),
              const SizedBox(height: 10),
              Container(
                height: 600,
                color: Colors.grey[50],
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _buildColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),



              // ========== MAIN AXIS ALIGNMENT (COLUMN) ==========

              // MainAxisAlignment.center (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.center')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceAround (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceAround')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceBetween (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceBetween')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.spaceEvenly (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.spaceEvenly')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.start (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.start')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // MainAxisAlignment.end (Column)
              Center(child: _buildSectionTitle('MainAxisAlignment.end')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                color: Colors.grey[50],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // ========== CROSS AXIS ALIGNMENT (COLUMN) ==========
              // CrossAxisAlignment.start (Column)
              Center(child: _buildSectionTitle('CrossAxisAlignment.start')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.end (Column)
              Center(child: _buildSectionTitle('CrossAxisAlignment.end')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),


              // CrossAxisAlignment.center (Column) <-- Giusab
              Center(child: _buildSectionTitle('CrossAxisAlignment.center')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),

              // CrossAxisAlignment.stretch (Column) 
              Center(child: _buildSectionTitle('CrossAxisAlignment.stretch')),
              const SizedBox(height: 10),
              Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[50],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: _buildSmallColoredBoxes(),
                ),
              ),
              const SizedBox(height: 350),
            ],
          ),
        ),
      ),
    );
  }

    // Helper: Section Title
    Widget _buildSectionTitle(String title) {
      return Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      );
    }

    // Helper: Colored Boxes for Row
    List<Widget> _buildColoredBoxes() {
      return const [
        Box(color: Colors.red, label: '', size: 60),
        Box(color: Colors.yellow, label: '', size: 60),
        Box(color: Colors.blue, label: '', size: 60),
      ];
    }

    // Helper: Small Colored Boxes for Column
    List<Widget> _buildSmallColoredBoxes() {
      return const [
        Box(color: Colors.red, label: '', size: 50),
        Box(color: Colors.yellow, label: '', size: 50),
        Box(color: Colors.blue, label: '', size: 50),
      ];
    }
  }

  // Custom Box Widget
  class Box extends StatelessWidget {
    final Color color;
    final String label;
    final double size;

    const Box({
      super.key,
      required this.color,
      required this.label,
      this.size = 50,
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        width: size,
        height: size,
        color: color,
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    }
}