import 'package:datingapp/pages/emailverification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUP extends StatefulWidget {
  const SignUP({Key? key}) : super(key: key);

  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFD877B),
          body: Column(
            children: [
              // Icon(Icons.favorite,size: 50,color: Color(0xffFD877B),),
              // Text('DATER',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xffFD877B)),),
              MyClipPath(),
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 10),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: '''By clicking "'''),
                        TextSpan(
                          text: 'Log in',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: '''",you agree with our '''),
                        TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text: '. Learn\nhow we process your data in our '),
                        TextSpan(
                          text: 'Privacy Policy ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: 'and\n'),
                        TextSpan(
                          text: 'Cookies Policy.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )

                  //  Text(""" By clicking "Log in",you agree with terms.Learn\nhow we process your data in our privacy policy and\ncookies policy.""",
                  //  style: TextStyle(
                  //    color: Colors.white
                  //  ),),
                  ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const EmailVerification()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          Text(
                            "Log in with Email",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          Text(
                            "Log in with facebook",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Trouble Logging in?',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          )),
    );
  }
}

class MyClipPath extends StatelessWidget {
  const MyClipPath({Key? key}) : super(key: key);
  final Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        color: backgroundColor,
        width: 400,
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: const [
              Icon(
                Icons.favorite,
                size: 50,
                color: Color(0xffFD877B),
              ),
              Text(
                'DATER',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFD877B)),
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
