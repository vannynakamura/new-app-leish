import 'package:flutter/material.dart';

class Resultados extends StatefulWidget {
  const Resultados({Key? key}) : super(key: key);

  @override
  State<Resultados> createState() => _ResultadosState();
}

class _ResultadosState extends State<Resultados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Resultados'),
            ],
          ),
        ],
      ),
    );
  }
}
