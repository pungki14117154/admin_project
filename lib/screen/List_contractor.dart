import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Detail_kontraktor.dart';

class ListContractor extends StatelessWidget {
  BuildContext get context => null;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              child: Row(children: [
                SizedBox(
                  width: 5,
                ),
                Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/mitra/kontraktor/kon3.jpg'),
                          fit: BoxFit.fill),
                    )),
                SizedBox(
                  width: 5,
                ),
                _partnerContractor('Agung Perkasa', () {
                  Route route = MaterialPageRoute(
                      builder: (context) => DetailKontraktor());
                  Navigator.push(context, route);
                }),
              ]),
            ),

            // === card 2 ===
            Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/mitra/kontraktor/kon1.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('PT. Pembangunan Perkasa', () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailKontraktor());
                      Navigator.push(context, route);
                    })
                  ],
                )),
            // === Card 3 ===
            Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/mitra/kontraktor/kon2.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('Bangun Kokoh Sejahtera', () {})
                  ],
                )),

            // === Card 3 ===
            Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/mitra/kontraktor/kon1.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('Asian Build Contractor', () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailKontraktor());
                      Navigator.push(context, route);
                    })
                  ],
                )),

            // === Card 4 ===
            Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/mitra/kontraktor/kon4.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('PT. Sejahtera Hasil Karya', () {})
                  ],
                )),
            // === Card 5 ===
            Card(
                margin: EdgeInsets.all(5),
                elevation: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/mitra/kontraktor/kon5.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('Lampung Bangun', () {})
                  ],
                )),
          ],
        ),
      ],
    );
  }

  _partnerContractor(String nameContractor, Function press) {
    return GestureDetector(
      child: Container(
        width: 160,
        height: 170,
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: Color(0xff257C7D),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                nameContractor,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Image.asset(
                        'assets/icons/maps.png',
                        width: 20,
                        height: 20,
                      ),
                      onPressed: null),
                  Text('Bandar Lampung',
                      style: TextStyle(color: Colors.white, fontSize: 12)),
                ],
              ),
              Text('20 Proyek Selesai',
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(height: 10),
              RaisedButton(
                color: Colors.orange,
                onPressed: () {
                  // Route route = MaterialPageRoute(
                  //     builder: (context) => DetailKontraktor());
                  // Navigator.push(context, route);
                },
                child: Text('Detail'),
              ),
            ],
          ),
        ),
      ),
      onTap: press,
    );
  }
}
