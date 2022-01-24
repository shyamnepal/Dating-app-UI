// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:datingapp/components/navbar1.dart';
import 'package:flutter/material.dart';

class SimonMessage1 extends StatefulWidget {
  const SimonMessage1({Key? key}) : super(key: key);

  @override
  _SimonMessage1State createState() => _SimonMessage1State();
}

class _SimonMessage1State extends State<SimonMessage1> {
  double height = 0;
  double width = 0;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    setState(() {
      height = MediaQuery.of(context).size.height;
      width = MediaQuery.of(context).size.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Color(0xffFE8074),
            )),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            "Simon Carter",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.orange,
                //border: Border.all(color: Color(0xffff8b7e), width: 3),
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage(
                      'images/girl3.jpg',
                    ),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
      bottomNavigationBar: Navbar1(),
      body: Padding(
        padding: EdgeInsets.only(left: width * .04),
        child: Column(
          children: [
            Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * .04, top: height * .01),
                child: Text(
                  "Thrusday",
                  style: TextStyle(color: Color(0xffFD877B)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .04),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/gril2.jpg"),
                    radius: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectet \nadipiscing edit."),
                        Padding(
                          padding: EdgeInsets.only(top: height * .01),
                          child: Text(
                            "9:27 AM",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * .6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xffFE8074),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(30))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width * .04, top: height * .015),
                          child: Text(
                            "How are you?",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * .01),
                        child: Text(
                          "12:15 PM",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .04),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/gril2.jpg"),
                    radius: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectet \nadipiscing edit. Bibendum on imagna \ntincidunt."),
                        Padding(
                          padding: EdgeInsets.only(top: height * .01),
                          child: Text(
                            "12:10 PM",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * .38),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffFE8074),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(30))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: width * .04, top: height * .015),
                          child: Text(
                            "Bibendum magna tincidunt \npellentesque diam platea \ntincldunt cluls.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * .01),
                        child: Text(
                          "12:15 PM",
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: height * .04,
            ),
            Container(
              width: 90,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0), //(x,y)
                    blurRadius: 4.0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * .04, top: height * .01),
                child: Text(
                  "Thrusday",
                  style: TextStyle(color: Color(0xffFD877B)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .04),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/gril2.jpg"),
                    radius: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * .04),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Lorem ipsum dolor sit amet, consectet \nadipiscing edit. Bibendum on imagna \ntincidunt."),
                        Padding(
                          padding: EdgeInsets.only(top: height * .01),
                          child: Text(
                            "12:10 PM",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
