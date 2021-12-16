import 'package:datingapp/components/navbar.dart';
import 'package:datingapp/pages/match.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Discover2 extends StatefulWidget {
  const Discover2({Key? key}) : super(key: key);

  @override
  _Discover2State createState() => _Discover2State();
}

class _Discover2State extends State<Discover2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/girl3.jpg",
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              actions: [
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 150, bottom: 450),
                              child: Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 112,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                          ),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Dialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20),
                                                      child: Container(
                                                        height: 150,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Column(
                                                          children: [
                                                            const Text(
                                                              "Share",
                                                              style: TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            const Text(
                                                              "Tap an Icon below to share you\n        content Directly.",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 50),
                                                              child: Row(
                                                                children: [
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Image
                                                                          .asset(
                                                                        "images/instagram.png",
                                                                      )),
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Image
                                                                          .asset(
                                                                        "images/facebook.png",
                                                                      )),
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Image
                                                                          .asset(
                                                                        "images/whatsapp.png",
                                                                      )),
                                                                  IconButton(
                                                                      onPressed:
                                                                          () {},
                                                                      icon: Image
                                                                          .asset(
                                                                        "images/snapchat.png",
                                                                      ))
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Text("share")),
                                      Divider(),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                            primary: Colors.black,
                                          ),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Dialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20),
                                                      child: Container(
                                                        height: 300,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Column(
                                                          children: const [
                                                            Text(
                                                              "Report User",
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Divider(),
                                                            Text(
                                                              "Is this person bothering you? Tell us\n    what they did.",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Divider(),
                                                            Text(
                                                              "Inappropriate Photos",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Divider(),
                                                            Text(
                                                              "Feels Like Spam",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Divider(),
                                                            Text(
                                                              "User is Underage",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Divider(),
                                                            Text(
                                                              "Other",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  color: Colors
                                                                      .grey),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                          },
                                          child: Text("Report")),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.more_horiz_sharp),
                    )),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: SingleChildScrollView(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Card(
                          color: Colors.white,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.close_sharp,
                                    color: Colors.redAccent,
                                    size: 30,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Icon(
                                      Icons.favorite_outline,
                                      color: Colors.redAccent,
                                      size: 30,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 50),
                                    child: Icon(
                                      Icons.star_outline_sharp,
                                      color: Colors.redAccent,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30),
                                child: Text(
                                  'Eliza Williams, 23',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 110),
                                child: Row(
                                  children: const [
                                    Text(
                                      "Art Manager ",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff929292)),
                                    ),
                                    Icon(
                                      Icons.location_pin,
                                      size: 10,
                                      color: Colors.redAccent,
                                    ),
                                    Text(
                                      "10 miles",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff929292)),
                                    )
                                  ],
                                ),
                              ),
                              Text(""),
                              const Text(
                                "Feminist,casts,other stuff that's mildly",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff929292)),
                              ),
                              const Text(
                                "interesting.",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff929292)),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 70,
                                width: 350,
                                decoration: BoxDecoration(
                                    color: const Color(0xfff5f5f5),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Text(
                                        "I'm a photographer,yoga enthusiast,love to\nrelax but very adventuros and love of\n superhero movies.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff929292)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "Gender:",
                                    style: TextStyle(color: Color(0xff929292))),
                                TextSpan(
                                  text: "Female",
                                  style: TextStyle(color: Colors.redAccent),
                                )
                              ])),
                              RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: "Instagram:",
                                    style: TextStyle(color: Color(0xff929292))),
                                TextSpan(
                                  text: "@Eliza-willams",
                                  style: TextStyle(color: Colors.redAccent),
                                )
                              ])),
                              Text(""),
                              const Padding(
                                padding: EdgeInsets.only(right: 250),
                                child: Text(
                                  "Hobbies",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff686868),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                    "Computer Programming, Archery, Drawing, Chess, Poetry",
                                    style: TextStyle(color: Color(0xff929292))),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 220, top: 10),
                                child: Text(
                                  "Other Photos",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xff686868),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'images/girl3.jpg',
                                        height: 150,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'images/girl3.jpg',
                                        height: 150,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        'images/girl3.jpg',
                                        height: 150,
                                        width: 100,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Match()),
                                  );
                                },
                                child: const Text('test button'),
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffFD877B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                              ),
                            ],
                          ),
                        ),
                      ),
                      NavBar(),
                    ],
                  ),
                ),
              ),
            ))
      ],
    );
  }
}
