import 'package:flutter/material.dart';

class AudiobookPage extends StatefulWidget {
  const AudiobookPage({super.key});

  @override
  State<AudiobookPage> createState() => _HomePageState();
}

class _HomePageState extends State<AudiobookPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Audiobook Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
