import 'package:flutter/material.dart';
import 'package:admin_project/constants/images_constant.dart';

class DrawerTentangAplikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff257C7D),
        appBar: AppBar(
          backgroundColor: Color(0xff257C7D),
          title: Text('Tentang Aplikasi'),
          leading: IconButton(
            icon: Image.asset(
              'assets/icons/back1.png',
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              height: 500,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        logoImage,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Solusi',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(' versi 1.0.0')
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, top: 16, right: 5),
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5),
                    height: 350,
                    width: MediaQuery.of(context).size.width * .90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.orange,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pembaruan Fitur:',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Versi 1.0.0',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 45,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.orange[500],
                onPressed: () {},
                child: Text(
                  'CEK VERSI TERBARU',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
