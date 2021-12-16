import 'package:datingapp/components/navbar.dart';
import 'package:datingapp/pages/addphoto.dart';
import 'package:flutter/material.dart';

class SimonProfile extends StatefulWidget {
  const SimonProfile({Key? key}) : super(key: key);

  @override
  _SimonProfileState createState() => _SimonProfileState();
}

class _SimonProfileState extends State<SimonProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.settings,
          color: Color(0xffff8b7e),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
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
                Positioned(
                    bottom: 10,
                    right: 0,
                    child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 7,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  right: 15, bottom: 5, left: 1),
                              child: Icon(
                                Icons.edit_outlined,
                                color: Color(0xffff8b7e),
                                size: 20,
                              ),
                            ))))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Simon Carter, 23",
              style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Instagram:", style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: " @Simon-Center",
                  style: TextStyle(color: Color(0xffff8b7e)))
            ])),
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Get matches faster",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("Boost your profile once a month!")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Color(0xffFD877B),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AddPhoto()),
                  );
                },
                child: const Text('Dater Plus'),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffFD877B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Spacer(),
            NavBar(),
          ],
        ),
      ),
    );
  }
}
