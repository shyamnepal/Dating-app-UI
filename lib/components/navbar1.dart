import 'package:datingapp/pages/chart.dart';
import 'package:flutter/material.dart';

class Navbar1 extends StatefulWidget {
  const Navbar1({Key? key}) : super(key: key);

  @override
  _Navbar1State createState() => _Navbar1State();
}

class _Navbar1State extends State<Navbar1> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Chart()));
          },
          child: Icon(
            Icons.add_circle_rounded,
            color: Color(0xffFD877B),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.add_a_photo_outlined,
            color: Color(0xffFD877B),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Icon(
            Icons.image_rounded,
            color: Color(0xffFD877B),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.mic,
            color: Color(0xffFD877B),
          ),
        ),
        Expanded(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: new EdgeInsets.symmetric(vertical: 10.0),
                  focusColor: Color(0xfff5f5f5),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide:
                        const BorderSide(color: Colors.white, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(30)),
                  labelStyle: TextStyle(
                    color: Color(0xfff5f5f5),
                  ),

                  hintText: "Type a message",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,

                  fillColor: Color(0xfff5f5f5),
                  prefixIcon: Icon(
                    Icons.emoji_emotions,
                  ),
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(
                  //       color: Color(0xFF6200EE)),
                  // ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Icon(
            Icons.favorite,
            color: Color(0xffFD877B),
          ),
        ),
      ],
    );
  }
}
