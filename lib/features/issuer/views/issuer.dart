import 'package:flutter/material.dart';

class Issuer extends StatefulWidget {
  const Issuer({Key? key}) : super(key: key);

  @override
  _IssuerState createState() => _IssuerState();
}

class _IssuerState extends State<Issuer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("issuer"),
    );
  }
}
