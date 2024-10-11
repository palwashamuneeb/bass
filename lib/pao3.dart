import 'package:flutter/material.dart';

void main() {
  runApp(const PalwashaListApp());
}

class PalwashaListApp extends StatelessWidget {
  const PalwashaListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Palwasha List')),
          backgroundColor: Colors.black, // Black AppBar
        ),
        body: Container(
          color: Colors.orange, // Orange background
          child: ListView(
            children: List.generate(10, (index) {
              return Card(
                color: Colors.black, // Black card
                child: ListTile(
                  title: Text(
                    'Item ${index + 1}',
                    style: TextStyle(color: Colors.orange), // Orange text
                  ),
                  subtitle: Text(
                    'Details about Item ${index + 1}',
                    style: TextStyle(color: Colors.orange), // Orange subtitle
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
