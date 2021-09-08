import 'package:admin_project/constants/images_constant.dart';
import 'package:admin_project/screen/Chat_screen.dart';
import 'package:flutter/material.dart';

import 'Add_Arsitek.dart';
import 'List_arsitek.dart';

class ChatScreen extends StatefulWidget {
  final String options;

  ChatScreen({this.options});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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

            Container(
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
                          'Cari Percakapan dengan Customer',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Colors.white,
              height: 518,
              child: ListView(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Semua',
                          style: TextStyle(fontSize: 18, color: Colors.orange),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text('Belum Dibaca'),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.orange,
                    height: 20,
                  ),
                  _listUser('Pungki', 'Hallo selamat siang saya ingin men...',
                      'assets/user/user4.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser(
                      'Ibu Putri ayu',
                      'Bagaimana dengan proyek yang su...',
                      'assets/user/dua.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser('Anabul', 'Terima kasih, proyek kapan disurvei?',
                      'assets/user/tiga.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser('Budiman', 'Bagaimana pengajuannya? sudah diacc?',
                      'assets/user/empat.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser(
                      'Ahmad annas',
                      'Tersurvei namun belum ada balasan...',
                      'assets/user/lima.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser('Zulhijah', 'Bagaimana pengajuannya? sudah diacc?',
                      'assets/user/user3.png', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                  _listUser('titi dh', 'Bagaimana pengajuannya? sudah diacc?',
                      'assets/user/delapan.jpg', () {
                    Route route =
                        MaterialPageRoute(builder: (context) => ChatPage());
                    Navigator.push(context, route);
                  }),
                  Divider(
                    color: Colors.black,
                    height: 20,
                  ),
                ],
              ),
            ),

            //----- body -----
          ]),
        ],
      ),
    );
  }

  _listUser(String name, String isiChat, String foto, Function press) {
    return GestureDetector(
      child: Container(
        height: 50,
        child: Row(children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(foto),
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 160, bottom: 5),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                isiChat,
                style: TextStyle(
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ]),
      ),
      onTap: press,
    );
  }
}
