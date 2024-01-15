import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:typed_data';

import 'package:project/widgets/utils.dart';

class newItem extends StatefulWidget {
  const newItem({Key? key}) : super(key: key);

  @override
  State<newItem> createState() => _newItemState();
}

class _newItemState extends State<newItem> {
  Uint8List? _image;
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ürün Giriniz.",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color: const Color.fromARGB(255, 172, 168, 168)),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: TextFormField(
                          // ignore: body_might_complete_normally_nullable

                          decoration: InputDecoration(
                            hintText: "Ürün ismi",
                            prefixIcon: Icon(Icons.add_outlined, size: 30),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 1.0,
                              color: const Color.fromARGB(255, 172, 168, 168)),
                        ),
                        color: Colors.white,
                      ),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: TextFormField(
                          // ignore: body_might_complete_normally_nullable

                          decoration: InputDecoration(
                            hintText: "Ürün Açıklaması",
                            prefixIcon: Icon(Icons.add_outlined, size: 30),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            selectImage();
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.photo_size_select_actual_sharp,
                            ),
                          ),
                        ),
                        _image != null
                            ? CircleAvatar(
                                backgroundImage: MemoryImage(_image!),
                              )
                            : Container(
                                height: 100,
                                width: 100,
                              )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
