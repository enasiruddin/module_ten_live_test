import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Styling App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Text(
                'Flutter Text Styling',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),


              const Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 20),

              TextButton(
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You clicked the button!'),
                    ),
                  );
                },
                child: const Text('Click Me', style: TextStyle(color: Colors.black),),
              ),

              const SizedBox(height: 20),

              RichText(text: const TextSpan(
                children: [
                   TextSpan(text: 'Welcome to'),
                   TextSpan(text: ' flutter!', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
                ]
              ))
            ],
          ),
        ),
      ),
    );
  }
}
