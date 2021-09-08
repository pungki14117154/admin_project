import 'dart:io';

import 'package:admin_project/constants/colors_constants.dart';
import 'package:admin_project/database/database_layanan_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TambahArsitek extends StatefulWidget {
  String get options => null;

  @override
  _TambahArsitekState createState() => _TambahArsitekState();
}

class _TambahArsitekState extends State<TambahArsitek> {
  String name_layanan = 'REGISTRASI ARSITEK';
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
                height: MediaQuery.of(context).size.width * 2.4,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                          name_layanan,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        // Text(

                        //   'REGISTRASI KONTRAKTOR',
                        //   style: TextStyle(
                        //       fontSize: 18, fontWeight: FontWeight.bold),
                        // ),
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              hintText: 'Nama Lengkap',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Nama lengkap tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              name = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'username tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              username = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Kata Sandi',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Kata sandi tidak boleh kosong';
                              } else if (val.length < 6) {
                                return 'Kata sandi minimal 6 karakter';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              password = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Ulangi Kata Sandi',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Kata sandi tidak boleh kosong';
                              } else if (val.length < 6) {
                                return 'Kata sandi minimal 6 karakter';
                              } else if (password != rePassword) {
                                return 'Kata sandi tidak sama';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              rePassword = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Email tidak boleh kosong';
                              } else if (!val.contains('@') ||
                                  !val.contains('.')) {
                                return 'Format email tidak sesuai';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              email = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'No Hp',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'No. HP tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              phone = value;
                            },
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
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              hintText: 'Alamat',
                              border: InputBorder.none,
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Alamat tidak boleh kosong';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              alamat = value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    toast('Kontraktor berhasil ditambahkan !');
                                  } else {
                                    toast('Foto belum ditambahkan');
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
              ),
            ))),
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
