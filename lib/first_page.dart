import 'dart:io';
import 'package:app_ah/boxes.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    // final imageTemporary = File(image.path);
    // setState(() => this.image = imageTemporary);
  }

  Future takePicture(ImageSource source) async {
    final camera = await ImagePicker().pickImage(source: ImageSource.camera);
    if (camera == null) return;

    // final imageTemporary = File(image.path);
    // setState(() => this.image = imageTemporary);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Olá, Vanessa!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '05 Out, 2022',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.purple[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Histórico',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                  Column(
                    children: [
                      Box(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Deseja fazer uma nova consulta?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style:
                        ElevatedButton.styleFrom(primary: Colors.purple[300]),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => SegundaRota()),
                      // );
                    },
                    icon:
                        Icon(Icons.camera_alt), //icon data for elevated button
                    label: Text("Acesso a Câmera"), //label text
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
