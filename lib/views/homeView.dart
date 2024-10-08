import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/localAndWebObjectsView.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LocalAndWebObjectsView()));
              },
              child: const Text("Local / Web Objects")),
        ));
  }
}
