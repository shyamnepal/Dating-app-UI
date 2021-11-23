import 'package:datingapp/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 150,top: 40),
                     child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                         color: Color(0xffF89688),
                         shape: BoxShape.circle,
                      ),
                  ),
                   ),
                  Container(
                    margin: const EdgeInsets.only(top: 35, left: 40),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xffF89688),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(
                        image: AssetImage('images/girl1.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100,left: 40),
                    child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                           color: Color(0xffF89688),
                           shape: BoxShape.circle,
                        ),
                    ),
                  ),
                 
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 50),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        color: Color(0xffF89688),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('images/girl1.png'),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100,left:50),
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                             color: Color(0xffF89688),
                             shape: BoxShape.circle,
                          ),
                    ),
                      ),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xffF89688),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('images/girl1.png'),
                        ),
                      )),

                      
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Center(
                    child: Column(
                  children: [
                   const Icon(
                      Icons.favorite,
                      color: Color(0xffFD877B),
                      size: 70,
                    ),
                   const Text(
                      "What's your email?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const Padding(
                      padding:  EdgeInsets.only(top: 20),
                      child: Text(
                        "Don't loose access to your account,\n          verify your email.",
                        style: TextStyle(color: Colors.grey, fontSize: 14,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'enter your email',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 15),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color(0xffF0F0F0), width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()),);
                                },
                                child: const Text('Continue'),
                                style: ElevatedButton.styleFrom(
                                    primary: const Color(0xffFD877B),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30))),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text("Or"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'images/googleIcon.jpg',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          const Text('Sign in with google'),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Text("Terms of use and privacy policy",style: TextStyle(color: Colors.grey),),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
