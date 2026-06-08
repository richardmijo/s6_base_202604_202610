import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle'),
      ),
      body: const Center(
        child: Text(
          'Pantalla de Detalle',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
