
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text("Welcome to First Page",style: TextStyle(fontSize: 28),),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: 'Data from first page!',
                );
              },
              child: const Text("Go to second"))
        ],
      )),
    );
  }
}
