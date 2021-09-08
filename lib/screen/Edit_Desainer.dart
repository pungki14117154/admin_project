import 'dart:io';

import 'package:admin_project/constants/colors_constants.dart';
import 'package:admin_project/database/database_layanan_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditDesainer extends StatefulWidget {
  @override
  _EditDesainerState createState() => _EditDesainerState();
}

class _EditDesainerState extends State<EditDesainer> {
  String name = '';
  String username = '';
  String password = '';
  String rePassword = '';
  String email = '';
  String phone = '';
  String alamat = '';

  final _formKey = GlobalKey<FormState>();

  bool visible = false;
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorTeals,
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              color: colorTeals,
              height: MediaQuery.of(context).size.width * 100,
              width: MediaQuery.of(context).size.width * 100,
            ),
            Center(
                child: SingleChildScrollView(
                    child: Center(
                        child: Container(
              height: 680,
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Image.asset(
                          'assets/icons/back1.png',
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ' EDIT DESAINER',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: 'Arch Of Art',
                            border: InputBorder.none,
                          ),
                          // validator: (val) {
                          //   if (val.isEmpty) {
                          //     return 'Nama lengkap tidak boleh kosong';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // onChanged: (value) {
                          //   name = value;
                          // },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: 'md.archofart',
                            border: InputBorder.none,
                          ),
                          // validator: (val) {
                          //   if (val.isEmpty) {
                          //     return 'username tidak boleh kosong';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // onChanged: (value) {
                          //   username = value;
                          // },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'arch.art.bandarlampung@gmail.com',
                            border: InputBorder.none,
                          ),
                          // validator: (val) {
                          //   if (val.isEmpty) {
                          //     return 'Email tidak boleh kosong';
                          //   } else if (!val.contains('@') ||
                          //       !val.contains('.')) {
                          //     return 'Format email tidak sesuai';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // onChanged: (value) {
                          //   email = value;
                          // },
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: '0812 2132 1122',
                            border: InputBorder.none,
                          ),
                          // validator: (val) {
                          //   if (val.isEmpty) {
                          //     return 'No. HP tidak boleh kosong';
                          //   } else {
                          //     return null;
                          //   }
                          //  },
                          // onChanged: (value) {
                          //   phone = value;
                          // },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: 'Bandar Lampung',
                            border: InputBorder.none,
                          ),
                          // validator: (val) {
                          //   if (val.isEmpty) {
                          //     return 'Alamat tidak boleh kosong';
                          //   } else {
                          //     return null;
                          //   }
                          // },
                          // onChanged: (value) {
                          //   alamat = value;
                          // },
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () async {
                          _image =
                              await DatabaseLayananService.getImageGallery();
                          if (_image == null) {
                            setState(() {});
                          } else {
                            print(_image);
                          }
                        },
                        child: Container(
                          width: 150,
                          height: 45,
                          margin: EdgeInsets.only(right: 90),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[200]),
                          child: Text(
                            '* Pilih Foto',
                            style: TextStyle(
                              color: Color(0xffC4C4C4),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20),
                          width: 200,
                          child: RaisedButton(
                            color: colorPrimary,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                if (_image != null) {
                                  toast('Desainer berhasil diEdit !');
                                } else {
                                  toast('Desainer berhasil diEdit !');
                                }
                              }
                            },
                            child: Text('SUBMIT'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            )))),
          ],
        ));
  }
}

toast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      fontSize: 16.0);
}
