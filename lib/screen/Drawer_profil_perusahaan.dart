import 'package:admin_project/constants/images_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerProfilPerusahaan extends StatefulWidget {
  @override
  _DrawerProfilPerusahaanState createState() => _DrawerProfilPerusahaanState();
}

class _DrawerProfilPerusahaanState extends State<DrawerProfilPerusahaan> {
  String description =
      "Solusi Inti Properti merupakan perusahaan yang bergerak dibidang pengembangan bisnis properti dengan beberapa bisnis yang ditekuni diantaranya pengembanganjasa kontraktor, desainer, arsitek, dan developer perumahan. Solusi Inti Properti berlokasi di Jl. Senopati, Jatimulyo, Kecamatan Jati Agung, Kabupaten Lampung Selatan.";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Monda'),
      home: Scaffold(
        backgroundColor: Color(0xff257C7D),
        appBar: AppBar(
          backgroundColor: Color(0xff257C7D),
          title: Text('Profil Perusahaan'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Image.asset(
              'assets/icons/back1.png',
              color: Colors.white,
            ),
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Image.asset(
                    logoImage,
                    height: 150,
                    width: 180,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'PT. Solusi Inti Properti',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  description,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
