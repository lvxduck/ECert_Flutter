import 'package:flutter/material.dart';

class Verifier extends StatefulWidget {
  const Verifier({Key? key}) : super(key: key);

  @override
  _VerifierState createState() => _VerifierState();
}

class _VerifierState extends State<Verifier> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("verifier"),
    );
  }
}
