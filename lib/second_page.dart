import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String data;
  const SecondPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Second Page",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(data, style: const TextStyle(fontSize: 16)),
        ],
      )),
    );
  }
}
