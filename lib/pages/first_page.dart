import 'dart:io';
import 'package:app_ah/boxes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import '../test.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  List<File> images = [];

  Future _imageFromCamera(int index) async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      images.insert(index, File(image!.path));
      images.removeAt(index + 1);
    });
  }

  Future _imageFromGallery(int index) async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      images.insert(index, File(image!.path));
      images.removeAt(index + 1);
    });
  }

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(''),
        backgroundColor: Colors.pink[900],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.pink[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Olá, ' + user.email!),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        '05 Out, 2022',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          FirebaseAuth.instance.signOut();
                        },
                        color: Colors.deepPurple[200],
                        child: const Text('Sign Out'),
                      ),
                    ],
                  ),
                ],
              ),
              const Text(
                'Histórico',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                  Column(
                    children: const [
                      Box(),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Deseja fazer uma nova consulta?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
              const Text(
                'Clique para selecionar as imagens',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisAlignment.spaceBetween,
                children: [
                  // imagemSelecionada == null
                  //     ? Container()
                  //     : Image.file(imagemSelecionada!),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddPictures(),
                              fullscreenDialog: true,
                            ),
                          );
                        },
                        icon: const Icon(
                            Icons.camera_alt), //icon data for elevated button
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      // IconButton(
                      //   onPressed: () {
                      //     Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => {}),
                      //     );
                      //   },
                      //   icon: const Icon(
                      //       Icons.image), //icon data for elevated button
                      // )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showPicker(context, int index) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: const Icon(Icons.photo_library),
                      title: const Text('Galeria'),
                      onTap: () async {
                        _imageFromGallery(index);
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: const Text('Câmera'),
                    onTap: () {
                      _imageFromCamera(index);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
