// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:datingapp/components/navbar.dart';
import 'package:datingapp/pages/simanmessage1.dart';
import 'package:flutter/material.dart';

class Chart extends StatefulWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
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
    final list_items = [
      {
        'image': 'images/girl3.jpg',
        'name': 'Denniis Steele',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/gril2.jpg',
        'name': 'Rosa Richards',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Lora Barnett',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Christopher steven',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Lora Banett',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Rosa Richards',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Alice Morson',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Jason Masdelia',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Bruce Molkins',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Bruce Molkins',
        'subtitle': "Hey, how's life going.",
        'traling': '9:27 AM'
      }
    ];
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
            "Chat",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * .04, right: width * .04),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xfff5f5f5),
                  borderRadius: BorderRadius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: list_items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SimonMessage1()));
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                            "${list_items[index]['image']}",
                          ),
                          radius: 20,
                        ), //CircleAvatar
                        title: Text(
                          "${list_items[index]['name']}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("${list_items[index]['subtitle']}"),
                        trailing: Text("${list_items[index]['traling']}"),
                        // leading: Image.asset("$list_items[index][image]"),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
