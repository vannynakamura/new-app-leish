import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResultadosAntigos extends StatefulWidget {
  const ResultadosAntigos({Key? key}) : super(key: key);

  @override
  State<ResultadosAntigos> createState() => _ResultadosAntigosState();
}

class _ResultadosAntigosState extends State<ResultadosAntigos> {
  List<Object> _historyList = [];
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text('Resultados Antigos'),
          ),
        ],
      ),
    );
  }

// função para pegar as ultimas requisições de resultados do usuário
  Future getUsersRequestList() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    var data = await FirebaseFirestore.instance
        .collection('users')
        .doc('uid')
        .collection('resultados')
        .orderBy('created', descending: true)
        .get();

    setState(() {
      // _historyList = List.from(data.docs.)
    });
  }
}
