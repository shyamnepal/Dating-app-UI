import 'package:datingapp/pages/signup.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset(
                'images/welcome.png',
                width: 200,
                height: 200,
              ),
            ),
            const Icon(
              Icons.favorite,
              size: 50,
              color: Color(0xffFD877B),
            ),
            const Text(
              'Welcome to Dater',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text('Please fallow these club rules\n    when using app',
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 60),
                          child: Text('Be yourself',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Container(
                          height: 100,
                          width: 180,
                          child: const Card(
                            child: ListTile(
                              title: Text(
                                "upload your own photo, age and bio that's yours",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(20),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text('Be cool',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Container(
                          height: 100,
                          width: 180,
                          child: const Card(
                            child: ListTile(
                              title: Text(
                                "stay chill and treat other with respect and dignity ",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(20),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 80),
                          child: Text('Be safe',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Container(
                          height: 130,
                          width: 180,
                          child: const Card(
                            child: ListTile(
                              title: Text(
                                "Don't give out personal info soo quickly. Guage, analysis and date safely",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(20),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 50),
                          child: Text('Be active',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Container(
                          height: 130,
                          width: 170,
                          child: const Card(
                            child: ListTile(
                              title: Text(
                                "report other's rude or bad behaviour activity so we can keep it safe",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(20),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUP()),
                  );
                },
                child: const Text('I Understand'),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffFD877B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Spacer(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Terms of use and privacy policy",
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
