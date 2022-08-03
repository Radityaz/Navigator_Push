// ignore: file_names
// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  String name;

  WelcomePage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Result")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Name: $name", style: const TextStyle(fontSize: 20),))
        ],
      ),
    );
  }
}