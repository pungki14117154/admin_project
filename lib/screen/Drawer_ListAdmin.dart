import 'package:admin_project/screen/register_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ListAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff257C7D),
        appBar: AppBar(
          backgroundColor: Color(0xff257C7D),
          title: Text('Tim Marketing'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Image.asset(
              'assets/icons/back1.png',
              color: Colors.white,
            ),
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 140,
                ),
                Container(
                  width: 210,
                  height: 35,
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      FlatButton(
                          onPressed: () {
                            Route route = MaterialPageRoute(
                                builder: (context) => RegisterAdmin());
                            Navigator.push(context, route);
                          },
                          child:
                              Image(image: AssetImage('assets/icons/add.png'))),
                      Text(
                        'Tambah Admin',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
            _showAdminList(),
          ],
        ));
  }

  Widget _showAdminList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      height: 300,
      // width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Card(
            elevation: 20,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Row(
              children: [
                // Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  //  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Color(0xffFBCF07),
                      ),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/user/user1.png'),
                        fit: BoxFit.fill,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ahmad ',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'ahmad.123@gmail.com',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Admin1',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                  ],
                ),
              ],
            ),
          ),
          // ===   card 2 ===
          Card(
            elevation: 20,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Color(0xffFBCF07),
                      ),
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/user/user2.png'),
                        fit: BoxFit.fill,
                      )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Muhammad Aziz',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'maziz@gmail.com',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Admin2',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
