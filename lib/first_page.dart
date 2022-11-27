
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

                // Pushing a route directly, WITHOUT using a named route
                // With MaterialPageRoute, you can pass data between pages,
                // but if you have a more complex app, you will quickly get lost.

                //As the app gets bigger and using MaterialPageRoute, we need to call
                //this whenever we need to go to next screen which create redundant
                //repeatation
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const SecondPage(
                //         data: 'Hello there from the first page!'),
                //   ),
                // );