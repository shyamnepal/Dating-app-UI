import 'package:flutter/material.dart';

class SimonMessage extends StatefulWidget {
  const SimonMessage({Key? key}) : super(key: key);

  @override
  _SimonMessageState createState() => _SimonMessageState();
}

class _SimonMessageState extends State<SimonMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffFD877B),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Color(0xffff8b7e), width: 3),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage(
                      'images/girl3.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Simon Carter, 23",
            style: TextStyle(
                fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Text(
            "You're friends on Dater",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Lives in california, USA",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Say hi to your new Dater Friend, Simon."),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, top: 5),
                child: Text(
                  "Today",
                  style: TextStyle(color: Color(0xffFD877B)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Color(0xffff8b7e), width: 3),
                      borderRadius: BorderRadius.circular(100),
                      image: const DecorationImage(
                          image: AssetImage(
                            'images/girl3.jpg',
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Hi !",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 170, bottom: 20),
            child: Text(
              "9:27 AM",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Material(
            elevation: 30,
            child: Container(
                height: 74,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add_circle_rounded,
                            color: Color(0xffFD877B),
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
                          // TextField(
                          //   decoration: InputDecoration(
                          //       prefix: Icon(Icons.emoji_emotions)),
                          // ),
                          Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Icon(
                              Icons.favorite,
                              color: Color(0xffFD877B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      )),
    );
  }
}
