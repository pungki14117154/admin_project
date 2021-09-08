import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/List_contractor.dart';
import 'package:admin_project/screen/home_screen.dart';
import 'package:flutter/material.dart';

import 'Add_Kontraktor.dart';

class ContractorScreen extends StatefulWidget {
  final String options;

  ContractorScreen({this.options});

  @override
  _ContractorScreenState createState() => _ContractorScreenState();
}

class _ContractorScreenState extends State<ContractorScreen> {
  String name = 'Admin01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.grey[200],
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
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                children: [
                  FlatButton(
                      onPressed: () {
                        Route route = MaterialPageRoute(
                            builder: (context) => TambahKontraktor(
                                // options: 'REGISTRASI DESAINER',
                                ));
                        Navigator.push(context, route);
                      },
                      child: Image(image: AssetImage('assets/icons/add.png'))),
                  Text(
                    'Tambah Kontraktor',
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
                height: 510,
                color: Colors.white,
                child: ListContractor()),
          ]),
        ],
      ),
    );
  }
}
