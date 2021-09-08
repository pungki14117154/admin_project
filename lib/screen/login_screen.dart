import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'Forget_password.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FiraSansCondensed'),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String email = '';
  // String password = '';
  String email = 'pungki@admin.com';
  String password = 'ADMIN01';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Image.asset(
          backgroundImage,
          height: MediaQuery.of(context).size.width * 100,
          width: MediaQuery.of(context).size.width * 100,
          fit: BoxFit.fill,
        ),
        Container(
            child: Center(
                child: Container(
          height: 400,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                //Tampilkan Teks LOGIN
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'LOGIN ADMIN',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                          // validator: (value) {
                          //   //--------validasi inputan--------
                          // //   if (value.isEmpty) {
                          // //     return 'Email tidak boleh kosong';
                          // //   } else if (!value.contains('@') &&
                          // //       !value.contains('.')) {
                          // //     return ' Email Salah';
                          // //   } else if (value != email) {
                          // //     //untuk validasi dummy email
                          // //     return ' Email Salah';
                          // //   } else {
                          // //     return null;
                          // //   }
                          // // },
                          // onChanged: (val) {
                          //   email = val;
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
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Kata sandi',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

//tombol login
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  width: 200,
                  height: 40,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(29)),
                    onPressed: () async {
                      if (_formKey.currentState.validate()) {
                        Route route = MaterialPageRoute(
                            builder: (context) => HomeScreen());
                        Navigator.push(context, route);
                      }
                      _formKey.currentState.reset();
                    },
                    color: Colors.orange,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => ForgotPassword());
                        Navigator.push(context, route);
                      },
                      splashColor: Colors.grey[200],
                      child: Text(
                        'Lupa kata sandi ?',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ])),
        ))),
      ]),
    );
  }
}
