import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'resultados.dart';

class AddPictures extends StatefulWidget {
  const AddPictures({Key? key}) : super(key: key);

  @override
  State<AddPictures> createState() => _AddPicturesState();
}

class _AddPicturesState extends State<AddPictures> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[900],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Limite de 5 imagens'),
        backgroundColor: Colors.pink[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Colors.pink[900],
        child: Container(
          color: Colors.pink[900],
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Add Pictures GridView
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPicker(context, 0);
                            });
                          },
                          child: images.isNotEmpty
                              ? Container(
                                  child: Image.file(
                                    images[0],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPicker(context, 1);
                            });
                          },
                          child: images.length > 1
                              ? Container(
                                  child: Image.file(
                                    images[1],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPicker(context, 2);
                            });
                          },
                          child: images.length > 2
                              ? Container(
                                  child: Image.file(
                                    images[2],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPicker(context, 3);
                            });
                          },
                          child: images.length > 3
                              ? Container(
                                  child: Image.file(
                                    images[3],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _showPicker(context, 4);
                            });
                          },
                          child: images.length > 4
                              ? Container(
                                  child: Image.file(
                                    images[4],
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Gerar resultados:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        TextButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                //FAZER A FUNÇÃO FUNCIONAR
                                builder: (context) => const resultadoAmostras(),
                                fullscreenDialog: true,
                              ),
                            );
                          },

                          label: const Text(
                            'Resultados',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          icon: const Icon(
                            Icons.send,
                            size: 35,
                            color: Colors.green,
                          ),
                          // style: ,
                          // label: const Text('oi'),
                        )
                        // FloatingActionButton(
                        //   backgroundColor: Colors.pink[200],
                        //   hoverColor: Colors.white,
                        //   highlightElevation: 50,
                        //   hoverElevation: 50,
                        //   onPressed: () {
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         //FAZER A FUNÇÃO FUNCIONAR
                        //         builder: (context) => const resultadoAmostras(),
                        //         fullscreenDialog: true,
                        //       ),
                        //     );
                        //   },
                        // ),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
