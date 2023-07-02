import 'package:flutter/material.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  State<WritePage> createState() => _HomePageState();
}

class _HomePageState extends State<WritePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Write Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
