import 'package:admin_project/constants/images_constant.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email = '';
  bool visible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Image.asset(
            backgroundImage,
            height: MediaQuery.of(context).size.width * 100,
            width: MediaQuery.of(context).size.width * 100,
            fit: BoxFit.fill,
          ),
          Container(
              child: Center(
                  child: Container(
                      height: 320,
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
                              Text(
                                'Lupa Kata Sandi',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Form(
                          key: _formKey,
                          child: Container(
                            margin: EdgeInsets.only(top: 10, bottom: 20),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 1),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
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
                        ),
                        Container(
                          width: 200,
                          height: 40,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(29)),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _showAlertDialog(context,
                                    'Silahkan Cek dan ubah Kata Sandi Anda melalui email');
                              }
                              _formKey.currentState.reset();
                            },
                            color: Colors.orange,
                            child: Text(
                              'Kirim',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Divider(color: Colors.black),
                      ])))),
        ],
      ),
    );
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

_showAlertDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Pengubahan Kata Sandi'),
              Icon(
                Icons.lock,
                color: Color(0xFFF2711D),
              ),
            ],
          ),
          content: Text(
            message,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
