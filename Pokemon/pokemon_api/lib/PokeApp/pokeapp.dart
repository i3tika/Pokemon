import 'package:flutter/material.dart';

class PokeApp extends StatelessWidget {
  const PokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(children: [Text('PokeApp')],)
        ],
      ),
    );
  }
}
