import 'package:datingapp/pages/simonmessage.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

enum Singing { Classic, Gallery }
enum interest { Dating, Friendship, Business }

class _FilterState extends State<Filter> {
  int? _value = 1;
  Singing? _character = Singing.Classic;
  bool bool_value = false;
  double val = 1;
  interest? _interes = interest.Dating;
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
            "Filter",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "View Style",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Radio(
                    value: Singing.Classic,
                    groupValue: _character,
                    onChanged: (Singing? value) {
                      setState(() {
                        _character = value;
                      });
                    }),
                Text("Classic"),
                Radio(
                    value: Singing.Gallery,
                    groupValue: _character,
                    onChanged: (Singing? value) {
                      setState(() {
                        _character = value;
                      });
                    }),
                Text("Gallery")
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Icon(Icons.location_pin),
                      Text("Current location"),
                      Text("(Sans Francisco"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Distance",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 150),
                              child: Text(
                                "35 miles",
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                      ),
                      Slider(
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Color(0xfffe7f73),
                      ),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "3 miles",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 170),
                            child: Text(
                              "100 miles",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 2),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 180,
                        ),
                        child: Text(
                          "Interested",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Radio(
                                value: interest.Dating,
                                groupValue: _interes,
                                onChanged: (interest? value) {
                                  setState(() {
                                    _interes = value;
                                  });
                                }),
                          ),
                          Text("Dating"),
                          Radio(
                              value: interest.Friendship,
                              groupValue: _interes,
                              onChanged: (interest? value) {
                                setState(() {
                                  _interes = value;
                                });
                              }),
                          Text("Friendship"),
                          Radio(
                              value: interest.Business,
                              groupValue: _interes,
                              onChanged: (interest? value) {
                                setState(() {
                                  _interes = value;
                                });
                              }),
                          Text("Business"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 2),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 210),
                            child: Text("20-30"),
                          )
                        ],
                      ),
                      Slider(
                        value: val,
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        activeColor: Color(0xfffe7f73),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Gender section
            Container(
              margin: EdgeInsets.only(top: 10, right: 20, left: 20),
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text("Gender",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Female'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('male'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 215),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Non-Binary'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 175),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Transgender Female'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 115),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Transgender Male'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('Transgender'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 165),
                        child: Radio(
                            value: 1,
                            groupValue: 'null',
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SimonMessage()));
                      },
                      child: const Text('Next page'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
