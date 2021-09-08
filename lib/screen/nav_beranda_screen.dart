import 'package:admin_project/constants/colors_constants.dart';
import 'package:admin_project/screen/Detail_kontraktor.dart';
import 'package:admin_project/screen/Pengajuan_screen.dart';
import 'package:flutter/material.dart';

import 'Terlaksana_screen.dart';
import 'Terselesaikan_screen.dart';
import 'Tersurvei_screen.dart';
import 'Terverifikasi_screen.dart';
import 'arsitek_screen.dart';
import 'contractor_screen.dart';
import 'desainer_screen.dart';

class BerandaScreen extends StatefulWidget {
  @override
  _BerandaScreenState createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(children: [
        //------- Header -------
        Container(
          color: Color(0xFFF2711D),
          height: 100,
          child: Row(
            children: [
              SizedBox(
                height: 90,
                child: Image(
                  image: AssetImage('assets/images/logo_with_text.png'),
                ),
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
              'Hi, Admin01',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        // ------------ Cari -------------
        Container(
          color: Colors.white,
          margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff257C7D),
            ),
            child: TextField(
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: 'Cari ...',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  color: Colors.white,
                  splashColor: Colors.grey,
                ),
              ),
            ),
          ),
        ),

        //------------Body-------------------
        Container(
          width: MediaQuery.of(context).size.width,
          height: 518,
          child: ListView(scrollDirection: Axis.vertical, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                // height: 110,
                child: Row(children: [
                  _partnerChoice("assets/images/Kontraktor.png", () {
                    Route route = MaterialPageRoute(
                        builder: (context) => ContractorScreen());
                    Navigator.push(context, route);
                  }),
                  _partnerChoice("assets/images/Desainer.png", () {
                    Route route = MaterialPageRoute(
                        builder: (context) => DesainerScreen());
                    Navigator.push(context, route);
                  }),
                  _partnerChoice("assets/images/Arsitek.png", () {
                    Route route = MaterialPageRoute(
                        builder: (context) => ArsitekScreen());
                    Navigator.push(context, route);
                  }),
                ]),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                _projectList('Daftar Pengajuan Proyek', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => PengajuanScreen());
                  Navigator.push(context, route);
                }),
                SizedBox(
                  height: 10,
                ),
                _projectList('Proyek Terverifikasi', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => TerverifikasiScreen());
                  Navigator.push(context, route);
                }),
                SizedBox(
                  height: 10,
                ),
                _projectList('Proyek Tersurvei', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => TersurveiScreen());
                  Navigator.push(context, route);
                }),
                SizedBox(
                  height: 10,
                ),
                _projectList('Proyek Terlaksana', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => TerlaksanaScreen());
                  Navigator.push(context, route);
                }),
                SizedBox(
                  height: 10,
                ),
                _projectList('Proyek Terselesaikan', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => TerselesaikanScreen());
                  Navigator.push(context, route);
                }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ]),
        ),
      ]),
    );
  }

  Widget _partnerChoice(String image, Function press) {
    return GestureDetector(
      child: Container(
        width: 100,
        height: 100,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.contain,
          ),
        ),
      ),
      onTap: press,
    );
  }

  Widget _projectList(String name, Function press) {
    return GestureDetector(
      child: Container(
        width: 355,
        height: 200,
        color: colorTeals,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 140, top: 10),
              child: Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Divider(
              height: 10,
              color: Colors.orange,
            ),
            Padding(
              padding: EdgeInsets.only(left: 230),
              child: Text(
                'Lihat Semua >>',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 320,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(7)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 8),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Renovasi Rumah 2 Lantai',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text('Renovasi - Rumah'),
                          Row(
                            children: [
                              Image(
                                  image:
                                      AssetImage('assets/icons/maps_grey.png')),
                              Text('Bandar lampung'),
                            ],
                          ),
                          Text('Luas Bangunan 65 m2'),
                        ],
                      ),
                    ),
                    Card(
                      elevation: 10,
                      child: Image.asset(
                        'assets/Proyek/proyek1.jpg',
                        width: 90,
                        height: 90,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      onTap: press,
    );
  }
}
