import 'package:datingapp/pages/filter.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Color(0xffFD877B),
          ),
          title: const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              "Edit Profile",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          actions: const [
            Icon(
              Icons.more_horiz_outlined,
              color: Color(0xffFD877B),
            )
          ],
        ),
        body: Column(
          children: [
            // ListTile(
            //   title: Text(
            //     "About Karter",
            //     style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            //   ),
            //   subtitle: Text(
            //     "Fashion lover, Other stuff that's mildly interesting.",
            //     // style: TextStyle(fontSize: 12),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 230),
              child: Text(
                "About Karter",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child:
                  Text("Fashion lover, Other stuff that's mildly interesting."),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Text("500"),
            ),
            ListTile(
              title: Text(
                "Age",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "23",
                style: TextStyle(fontSize: 12),
              ),
            ),
            ListTile(
              title: Text(
                "Living in",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Madrid, Spain",
                // style: TextStyle(fontSize: 12),
              ),
            ),
            ListTile(
              title: Text(
                "Gender",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Transgender Male",
              ),
            ),
            ListTile(
              title: Text(
                "Passions",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Fashion, Instagram, style,Art, Drawing, poetry",
              ),
            ),
            ListTile(
              title: Text(
                "Profession",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Fashion Critic",
              ),
            ),
            ListTile(
              title: Text(
                "Social media",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "instragram",
              ),
            ),
            ListTile(
              title: Text(
                "Show my instagram photos",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Yes",
              ),
            ),
            Container(
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
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Filter()),
                            );
                          },
                          child: const Text('Done'),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffFD877B),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }
}
