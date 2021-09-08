import 'package:admin_project/constants/images_constant.dart';
import 'package:flutter/material.dart';

import 'Chat_screen.dart';

class ChatScreenNull extends StatefulWidget {
  @override
  _ChatScreenNullState createState() => _ChatScreenNullState();
}

class _ChatScreenNullState extends State<ChatScreenNull> {
  String name = 'Pungki';
  String avatar = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xFFF2711D),
          height: 100,
          child: Row(
            children: [
              SizedBox(
                height: 90,
                child: Image(
                  image: AssetImage(
                    headerImage,
                  ),
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 16),
            child: Text(
              "Hi, $name",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/icons/chatNull.png'),
              SizedBox(
                height: 5,
              ),
              Text(
                'Belum ada chat, nih',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text('Coba ngobrol dengan customer service,\nyuk!'),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16, bottom: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(builder: (context) => ChatPage()),
                      );
                    },
                    child: Image.asset('assets/icons/add_chat.png'),
                  ),
                  Text(
                    'Mulai Chat !',
                    style: TextStyle(fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
