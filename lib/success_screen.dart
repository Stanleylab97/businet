import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  final String transactionId;
  final int amount;
  SuccessScreen({required this.amount, required this.transactionId});

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Placeholder(),
    );
  }
}
