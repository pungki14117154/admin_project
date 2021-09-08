import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MarketingListScreen extends StatelessWidget {
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Container(
                  width: 230,
                  height: 35,
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      FlatButton(
                          onPressed: () {
                            // Route route = MaterialPageRoute(
                            //     builder: (context) => RegisterAdmin());
                            // Navigator.push(context, route);
                          },
                          child:
                              Image(image: AssetImage('assets/icons/add.png'))),
                      Text(
                        'Tambah Marketing',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          _showAdminList(),
        ],
      ),
    );
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
                      'Ahmad Budiman',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Promosi',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0876 7898 8898',
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
                      'Danni A',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Developer Perumahan',
                      style: TextStyle(
                          color: Color(0xffFBCF07),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '0812 5454 2234',
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
