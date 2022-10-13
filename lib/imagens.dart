import 'package:flutter/material.dart';

class TelaDasImagens extends StatefulWidget {
  const TelaDasImagens({Key? key}) : super(key: key);

  @override
  State<TelaDasImagens> createState() => _TelaDasImagensState();
}

class _TelaDasImagensState extends State<TelaDasImagens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Limite de 5 Imagens:'),
        backgroundColor: Colors.pink[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(color: Colors.pink[900], child: Column()),
    );
  }
}
