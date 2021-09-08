import 'package:admin_project/screen/Detail_arsitek.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListArsitek extends StatelessWidget {
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
                          image: AssetImage('assets/mitra/arsitek/ar1.png'),
                          fit: BoxFit.fill),
                    )),
                SizedBox(
                  width: 5,
                ),
                _partnerContractor('HJS Realty', () {
                  Route route =
                      MaterialPageRoute(builder: (context) => DetailArsitek());
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
                              image: AssetImage('assets/mitra/arsitek/ar2.png'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('DEKOR ARCHITECT', () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailArsitek());
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
                              image: AssetImage('assets/mitra/arsitek/ar3.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('FM ARSITEK PROJECT', () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailArsitek());
                      Navigator.push(context, route);
                    })
                  ],
                )),

            // === Card 4===
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
                              image: AssetImage('assets/mitra/arsitek/ar4.jpg'),
                              fit: BoxFit.fill),
                        )),
                    SizedBox(
                      width: 5,
                    ),
                    _partnerContractor('Brawijaya Arsitek', () {
                      Route route = MaterialPageRoute(
                          builder: (context) => DetailArsitek());
                      Navigator.push(context, route);
                    })
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
                  color: Color(0xffF2711D),
                  onPressed: () {
                    // Route route = MaterialPageRoute(
                    //     builder: (context) =>
                    //         DetailArsitek());
                    // Navigator.push(context, route);
                  },
                  child: Text('Detail'),
                ),
              ],
            ),
          ),
        ),
        onTap: press);
  }
}
