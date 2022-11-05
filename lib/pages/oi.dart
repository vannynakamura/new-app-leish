import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';

class Resultados {
  final dynamic TaxaDeInfeccao;
  final dynamic IndiceDeInfecacao;
  final dynamic QuantidadeDeLeishmania;
  final dynamic QuantidadeDeMacrofagosComLeishmania;
  final dynamic TotalDeMacrofagos;

  const Resultados(
      {required this.TaxaDeInfeccao,
      required this.QuantidadeDeLeishmania,
      required this.QuantidadeDeMacrofagosComLeishmania,
      required this.IndiceDeInfecacao,
      required this.TotalDeMacrofagos});

  factory Resultados.fromJson(Map<String, dynamic> json) {
    return Resultados(
        TaxaDeInfeccao: json['taxaInfec'],
        QuantidadeDeLeishmania: json['qntLeishmania'],
        QuantidadeDeMacrofagosComLeishmania: json['qntMacrofagosLeishmania'],
        IndiceDeInfecacao: json['indiceInfec'],
        TotalDeMacrofagos: json["totalMacrofagos"]);
  }
}

Future<Resultados> createResultados(List<File> arrayImages) async {
  String imageFile = arrayImages[0].path;

  // FormData formData = FormData.fromMap({
  //   "image": await MultipartFile.fromFile(imageFile,
  //       filename: "copa.jpg", contentType: MediaType('image', 'jpeg')),
  //   // "type": "image/jpeg",
  // });
  FormData formData = FormData();
  for (int i = 0; i < arrayImages.length; i++) {
    // var path = await FlutterAbsolutePath.getAbsolutePath(arrayImages[i].identifier);;
    var imagePath = arrayImages[i].path;
    formData.files.addAll([
      MapEntry(
          "image" + (i + 1).toString(),
          await MultipartFile.fromFile(imagePath,
              filename: imagePath, contentType: MediaType('image', 'jpeg')))
    ]);
  }
  print(arrayImages);

  Dio dio = Dio();

  var response = await dio.post("http://192.168.3.10:3000/predict",
      data: formData, options: Options());
  print("response");

  // var results = Resultados.fromJson(response.data['data']);
  // var results = Resultados.fromJson(jsonDecode(response.data));
  var results = Resultados.fromJson(response.data);
  return results;
}

class ResultadoAmostras extends StatefulWidget {
  late Future<Resultados> resultados;
  late List<File> arrayImages;
  late Resultados teste;

  ResultadoAmostras({
    Key? key,
    required this.arrayImages,
  }) : super(key: key);

  @override
  State<ResultadoAmostras> createState() => _ResultadoAmostrasState();
}

class _ResultadoAmostrasState extends State<ResultadoAmostras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async {
              widget.resultados = createResultados(widget.arrayImages);
              var oi = await widget.resultados;
              print(oi.IndiceDeInfecacao);
              Navigator.of(context).pop();
            },
            child: Center(
              child: Text('clique aq'),
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  FutureBuilder<Resultados> buildFutureBuilder() {
    return FutureBuilder<Resultados>(
      // future: resultados,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text('');
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const CircularProgressIndicator();
      },
    );
  }
}
