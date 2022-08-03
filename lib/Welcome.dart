// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';

import 'WelcomePage.dart';

class Welcome extends StatelessWidget {
  Welcome({Key? key}) : super(key: key);

  
  final TextEditingController _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Input Data")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Input Username"
                ),
              ),
            ),
            ElevatedButton(onPressed: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              WelcomePage(name: _name.text)));
            }), child: const Text("Input Data"))
          ],
        ),
    );
  }
}