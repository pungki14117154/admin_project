import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';

import 'Edit_profil.dart';
import 'Profil_drawer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String avatar = '';
  String username = 'Admin01. Ana';
  String fullName = 'Ana wati';
  String phoneNumber = '0867 9898 1234';

  @override

  // ======= Body Profil =========
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff257C7D),
        appBar: AppBar(
          title: Text('Profil'),
          backgroundColor: Color(0xff257C7D),
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/back1.png',
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        endDrawer:
            //NAVIGATION DRAWER DI PROFIL
            NavigationProfileDrawer(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 16),
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: Color(0xffFBCF07)),
                            borderRadius: BorderRadius.circular(100),
                            image: DecorationImage(
                              image: AssetImage('assets/user/user3.png'),
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (context) => EditProfilPage());
                              Navigator.push(context, route);
                            },
                            child: Text(
                              'Edit Profil',
                              style: TextStyle(color: Colors.white),
                            ),
                            color: Color(0xFFF2711D),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 500,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '$username',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 500,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '$fullName',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(10)),
                          width: 500,
                          height: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '$phoneNumber',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
