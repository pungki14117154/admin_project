import 'package:admin_project/constants/colors_constants.dart';
import 'package:admin_project/constants/images_constant.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterAdmin extends StatefulWidget {
  @override
  _RegisterAdminState createState() => _RegisterAdminState();
}

class _RegisterAdminState extends State<RegisterAdmin> {
  String email = '';
  String password = '';
  String fullname = '';
  String username = '';
  String rePassword = '';
  String phone = '';

  final _formKey = GlobalKey<FormState>();

  var _currencies = ['Admin1', 'Admin2', 'Super Admin'];
  var _currentItemSelected = 'Kategori';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff257C7D),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            // Image.asset(
            //   // color: Color(0xff257C7D),
            //   height: MediaQuery.of(context).size.width * 100,
            //   width: MediaQuery.of(context).size.width * 100,
            //   fit: BoxFit.fill,
            // ),
            Center(
                child: SingleChildScrollView(
                    child: Center(
                        child: Container(
              height: 680,
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                        'REGISTRASI ADMIN',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
                            fullname = value;
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                      // Container(
                      //   margin: EdgeInsets.only(top: 10, bottom: 20),
                      //   padding:
                      //       EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                      //   decoration: BoxDecoration(
                      //     color: Colors.grey[200],
                      //     borderRadius: BorderRadius.circular(30),
                      //   ),
                      //   child: DropdownButton<String>(
                      //     items: _currencies.map((String dropDownStringItem) {
                      //       return DropdownMenuItem<String>(
                      //         value: dropDownStringItem,
                      //         child: Text(dropDownStringItem),
                      //       );
                      //     }).toList(),
                      //     onChanged: (String newValueSelected) {
                      //       _onDropDownItemSelected(newValueSelected);
                      //     },
                      //     value: _currentItemSelected,
                      //   ),
                      // ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, top: 30),
                          width: 200,
                          height: 45,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29)),
                            color: colorPrimary,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                toast('Registrasi Admin Berhasil !');
                              }

                              //batas method validasi

                              _formKey.currentState.reset();
                            },
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            )))),
          ],
        ));
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}

void toast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      fontSize: 16.0);
}
