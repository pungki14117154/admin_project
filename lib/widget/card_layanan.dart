import 'package:flutter/material.dart';

class MenuLayananWidget extends StatelessWidget {
  final String cardImage;
  final String cardTitle;
  final Function press;

  MenuLayananWidget({this.cardImage, this.cardTitle, this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: Colors.grey,
          ),
        ],
      ),
      child: InkWell(
        onTap: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff257C7D), Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      '$cardImage',
                    ),
                  )),
            ),
            Text(
              cardTitle,
            ),
          ],
        ),
      ),
    );
  }
}
