import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'nav_profil_screen.dart';

class EditProfilPage extends StatelessWidget {
  String username = 'Admin01.Ana';
  String fullName = 'Ana Wati';
  String phoneNumber = '0867 9898 1234';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Monda',
      ),
      home: Scaffold(
        backgroundColor: Color(0xff257C7D),
        appBar: AppBar(
          title: Text('Edit Profil'),
          backgroundColor: Color(0xff257C7D),
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/back1.png',
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Form(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30, bottom: 16),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffFBCF07)),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: AssetImage('assets/user/user3.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    FormField(
                      text: username,
                      exception: 'Username tidak boleh kosong',
                      hint: 'Username',
                    ),
                    FormField(
                      text: fullName,
                      exception: 'Nama Lengkap tidak boleh kosong',
                      hint: 'Nama Lengkap',
                    ),
                    FormField(
                      text: phoneNumber,
                      exception: 'Nomor Handphone tidak boleh kosong',
                      hint: 'Nomor Handphone',
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RaisedButton(
                        onPressed: () {
                          _showDialogAction(context);
                        },
                        child: Text('Simpan'),
                        color: Color(0xFFF2711D),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showDialogAction(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Konfirmasi Edit Profil'),
            Icon(
              Icons.update,
              color: Color(0xFFF2711D),
            ),
          ],
        ),
        content: Text('Apakah anda yakin ingin mengubah profil ?'),
        actions: [
          IconButton(
            icon: Icon(Icons.clear),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () async {
              Route route =
                  MaterialPageRoute(builder: (context) => ProfileScreen());
              Navigator.pop(context, route);
            },
          ),
        ],
      );
    },
  );
}

class FormField extends StatelessWidget {
  final text;
  final String hint;
  final String exception;

  FormField({
    @required this.text,
    @required this.hint,
    @required this.exception,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: TextEditingController(text: text),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return exception;
          } else {
            return null;
          }
        },
        // onChanged: (val) {
        //   if (hint == 'Username') {
        //     usernameEdit = val;
        //   } else if (hint == 'Nama Lengkap') {
        //     fullnameEdit = val;
        //   } else {
        //     phoneNumberEdit = val;
        //   }
        // },
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
