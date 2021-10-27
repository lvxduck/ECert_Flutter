import 'package:flutter/material.dart';

class Viewer extends StatefulWidget {
  const Viewer({Key? key}) : super(key: key);

  @override
  _ViewerState createState() => _ViewerState();
}

class _ViewerState extends State<Viewer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("viewer"),
    );
  }
}
