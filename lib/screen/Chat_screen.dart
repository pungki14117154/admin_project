import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String name;
  final String avatar;

  ChatPage({this.name, this.avatar});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pungki'),
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/back1.png',
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.orange,
        elevation: 0,
      ),
      body: Container(
          color: Color(0xffebebeb),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Expanded(
                  child: _chatShow(),
                ),
                SizedBox(height: 8),
                Row(children: [
                  Expanded(
                    child: TextField(
                      //  controller: _messageTextController,
                      decoration: InputDecoration(
                        hintText: 'Ketik pesan',
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16.0),
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  MaterialButton(
                    child: Text(
                      'KIRIM',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.orange,
                    textTheme: ButtonTextTheme.primary,
                    onPressed: () {},
                  ),
                ])
              ]))),
    );
  }
}

class _chatShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      children: [
        Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Hello Pungki !.\nAda yang bisa dibantu?\n Silahakan ajukan pertanyaan Anda pada kolom chat !',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            //Kanan
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Selamat siang !.\nSaya ingin menanyakan tentang harga untuk renovasi rumah',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              '09.28  12/04/2021',
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  width: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Informasi dapat dilihat pada Portofolio kami pada Proyek yang telah diselesaikan atau dengan menghubungi CS supaya informasi lebih detail. ',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
