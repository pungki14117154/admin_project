import 'package:admin_project/constants/images_constant.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class TerselesaikanScreen extends StatefulWidget {
  @override
  _TerselesaikanScreenState createState() => _TerselesaikanScreenState();
}

class _TerselesaikanScreenState extends State<TerselesaikanScreen> {
  String name = 'Admin01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.grey[200],
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
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff257C7D),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cari ...',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  _judulDaftar('Proyek Terselesaikan'),
                  Container(
                    height: 520,
                    child: ListView(
                      children: [
                        _ListPengajuan('Renovasi Rumah 2 Tingkat',
                            'Renovasi - Rumah', () {}),
                        _ListPengajuan(
                            'Bangun Rumah bu Ani', 'Bangun - Rumah', () {}),
                        _ListPengajuan(
                            'Dekor Kamar Anak', 'Renovasi - Rumah', () {}),
                        _ListPengajuan(
                            'Pembangunan Masjid', 'Bangun - Rumah', () {}),
                        _ListPengajuan(
                            'Toko Al-Barokah (Renov)', 'Renovasi-Toko', () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),

            //----- body -----
          ],
        )
      ]),
    );
  }

  _judulDaftar(String judul) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 150),
          child: Text(
            judul,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Divider(
          height: 20,
          color: Colors.black,
        ),
      ],
    );
  }

  _ListPengajuan(String nameproject, String jenis, Function press) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: 500,
        height: 180,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      nameproject,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                    child: Text(
                      jenis,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 30, 10),
                    child: Row(
                      children: [
                        Image(
                          width: 20,
                          height: 20,
                          image: AssetImage('assets/icons/maps.png'),
                        ),
                        Text('Bandar Lampung', style: TextStyle(fontSize: 14)),
                      ],
                    ),
                  ),
                  Text('Luas Bangunan 100 m2'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image(
                      width: 130,
                      height: 110,
                      image: AssetImage('assets/Proyek/proyek2.jpg'),
                      fit: BoxFit.fill),
                  RaisedButton(
                      color: Color(0xffF2711D),
                      //  color: Color(0xff257C7D),
                      onPressed: () {
                        // Route route = MaterialPageRoute(
                        //     builder: (context) => ContractorScreen());
                        // Navigator.push(context, route);
                      },
                      child: Text(
                        'Detail',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
