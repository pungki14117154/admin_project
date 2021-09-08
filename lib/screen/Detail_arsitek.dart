import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/contractor_screen.dart';
import 'package:admin_project/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Edit_Arsitek.dart';
import 'Edit_kontraktor.dart';

class DetailArsitek extends StatefulWidget {
  @override
  _DetailArsitekState createState() => _DetailArsitekState();
}

class _DetailArsitekState extends State<DetailArsitek> {
  String name = 'Admin01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.white,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //------- Header -------

              FlatButton(
                onPressed: () {
                  Route route =
                      MaterialPageRoute(builder: (context) => HomeScreen());
                  Navigator.push(context, route);
                },
                color: Color(0xFFF2711D),
                height: 100,
                child: Row(
                  children: [
                    Image.asset(
                      headerImage,
                      height: 90,
                    ),
                  ],
                ),
              ),
              //------- nama pengguna pojok kanan atas -------

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 16),
                  child: Text(
                    'Hi, $name',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              //--------- body Detail -----

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //gambar sampul
                      Stack(children: [
                        Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/mitra/kontraktor/kon1.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),

                        //gambar profil

                        Container(
                          // margin: EdgeInsets.symmetric(horizontal: 20),
                          margin: EdgeInsets.only(left: 130, top: 150),
                          //  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          width: 100,
                          height: 100,

                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffFBCF07)),
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/mitra/arsitek/ar1.png'),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ]),

                      // SizedBox(
                      //   height: 5,
                      // ),
                      // teks nama
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 75,
                            ),
                            Text(
                              'HJS Realty',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            FlatButton(
                              minWidth: 3,
                              onPressed: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => EditArsitek());
                                Navigator.push(context, route);
                              },
                              child: Container(
                                width: 20,
                                child: Image(
                                    image:
                                        AssetImage('assets/icons/pencil.png')),
                              ),
                            ),
                            FlatButton(
                              minWidth: 3,
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              child: Container(
                                width: 20,
                                child: Image(
                                    image:
                                        AssetImage('assets/icons/delete.png')),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // box
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                              width: 1,
                              color: Colors.black,
                            )),
                            width: 350,
                            height: 85,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 5, bottom: 5, left: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.home,
                                          color: Colors.grey,
                                        ),
                                        Text('  Arsitek Bangunan'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          color: Colors.grey,
                                        ),
                                        Text('  0878-0909-9998'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.map_sharp,
                                          color: Colors.grey,
                                        ),
                                        Text('Bandar Lampung'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //tentang
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 5, bottom: 5, left: 16),
                              child: Text(
                                'Tentang',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Pengalaman dan keilmuan yang dimiliki oleh para arsitek kami menjamin hasil karya dari proyek-proyek yang telah diselesaiakan. HJS Realty merupakan satu-satunya perusahaan dibidang pembangunan yang dipercaya menjamin hasil tanpa mengecewakan. Segera hubungi kami jika membutuhkan tim yang dapat membuat rumah impian Anda terwujud. \n\n HJS dipercaya memperindah Rumah Anda !',
                              textAlign: TextAlign.justify,
                              style: TextStyle(fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // showAlertDialog(context);
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xffF2711D),
            //  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            content: Text(
              'Apakah Anda yakin akan menghapus kontraktor ?',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            actions: [
              Row(
                children: [
                  RaisedButton(
                    color: Colors.grey[300],
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return ContractorScreen();
                      }));
                    },
                    child: Text(
                      '   Yakin  ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  RaisedButton(
                    color: Colors.grey[300],
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailArsitek();
                      }));
                    },
                    child: Text('   Tidak    ',
                        style: TextStyle(color: Colors.black)),
                  ),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ],
          );
        });
  }

  //toast('Foto belum ditambahkan');
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

  _hapusKontraktor() {}
}
