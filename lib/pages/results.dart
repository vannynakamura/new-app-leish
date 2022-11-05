// import 'package:flutter/material.dart';

// class ResultadosAmostras extends StatefulWidget {
//   late dynamic TaxaDeInfeccao;
//   late dynamic IndiceDeInfecacao;
//   late dynamic QuantidadeDeLeishmania;
//   late dynamic QuantidadeDeMacrofagosComLeishmania;
//   late dynamic TotalDeMacrofagos;

//   ResultadosAmostras({
//     Key? key,
//     required this.TaxaDeInfeccao,
//     required this.QuantidadeDeLeishmania,
//     required this.QuantidadeDeMacrofagosComLeishmania,
//     required this.IndiceDeInfecacao,
//     required this.TotalDeMacrofagos,
//   }) : super(key: key);

//   @override
//   State<ResultadosAmostras> createState() => _ResultadosAmostrasState();
// }

// class _ResultadosAmostrasState extends State<ResultadosAmostras> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text(''),
//         backgroundColor: Colors.pink[900],
//         centerTitle: true,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.pink[900],
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               Container(
//                 child: Text(
//                   'Resultados',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text('Taxa de Infecção:' + widget.TaxaDeInfeccao),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }














// Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back, color: Colors.white),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         title: const Text(''),
//         backgroundColor: Colors.pink[900],
//         centerTitle: true,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.pink[900],
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Column(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   resultados = createResultados(widget.arrayImages);
//                   const CircularProgressIndicator();
//                   // createResultados(widget.arrayImages);
//                   // Navigator.of(context).pop();
//                 },
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Clique aqui para visualizar os RESULTADOS',
//                               style: TextStyle(color: Colors.blue),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 child: Text(
//                   'Resultados',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Container(
//                 child: Text(
//                   'Total de Macrofagos:',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(''),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text('Quantidade de Macrofagos Contáveis:',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(''),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text('Quantidade de Leishmanias:',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(''),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text('Taxa de Infecção:',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(''),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text('Indice de Infecção:',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold)),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Container(
//                 child: Text(''),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
