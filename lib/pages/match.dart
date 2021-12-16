import 'package:datingapp/pages/discover2.dart';
import 'package:datingapp/pages/simonprofile.dart';
import 'package:flutter/material.dart';

class Match extends StatefulWidget {
  const Match({Key? key}) : super(key: key);

  @override
  _MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffffffff),
          body: Column(
            children: [
              // Icon(Icons.favorite,size: 50,color: Color(0xffFD877B),),
              // Text('DATER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffFD877B)),),
              MyClipPath(),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SimonProfile()),
                      );
                    },
                    child: const Text('Send a message'),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffFD877B),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),

              TextButton(
                style: TextButton.styleFrom(primary: Color(0xffcfcfcf)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Discover2()),
                  );
                },
                child: const Text(
                  "Go Back to Discover",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}

class MyClipPath extends StatelessWidget {
  MyClipPath({Key? key}) : super(key: key);
  final Color backgroundColor = Color(0xffff8b7e);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        color: backgroundColor,
        width: 400,
        height: 400,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              const Text(
                "You're Matched",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "you and Desirae have both liked each other",
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 20),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text("Kadin Dias",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          const Text("CTO",
                              style: TextStyle(color: Colors.white)),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text("7 miles",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/girl3.jpg"),
                          radius: 37,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.favorite,
                size: 30,
                color: Colors.white,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/girl3.jpg"),
                        radius: 37,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      child: Column(
                        children: [
                          const Text("Desirae Donin",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                          Text("CTO", style: TextStyle(color: Colors.white)),
                          Row(
                            children: const [
                              Icon(
                                Icons.location_pin,
                                size: 20,
                                color: Colors.white,
                              ),
                              Text("7 miles",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
