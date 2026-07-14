import 'package:flutter/material.dart';

class DeptPage extends StatefulWidget {
  const DeptPage({super.key});

  @override
  State<DeptPage> createState() => _DeptPageState();
}

class _DeptPageState extends State<DeptPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dept Page')),
      body: const Center(child: Text('Welcome to the Dept Page!')),
    );
  }
}