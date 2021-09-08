import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'Add_Arsitek.dart';
import 'List_arsitek.dart';

class ArsitekScreen extends StatefulWidget {
  final String options;

  ArsitekScreen({this.options});

  @override
  _ArsitekScreenState createState() => _ArsitekScreenState();
}

class _ArsitekScreenState extends State<ArsitekScreen> {
  String name = 'Admin01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 50,
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
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  FlatButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => TambahArsitek());
                        Navigator.push(context, route);
                      },
                      child: Image(image: AssetImage('assets/icons/add.png'))),
                  Text(
                    'Tambah Arsitek',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            //----- body -----
            Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                height: 500,
                color: Colors.white,
                child: ListArsitek()),
          ]),
        ],
      ),
    );
  }
}
