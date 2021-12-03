import 'package:datingapp/component/card.dart';
import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({Key? key}) : super(key: key);

  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    final list_items = [
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/gril2.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
       {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      },
      {
        'image': 'images/girl3.jpg',
        'name': 'Eliza william',
        'distance': '10 miles away',
      }
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 60),
            child: Text(
              "Discover",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.refresh,
                color: Colors.black,
              )),
          actions: [
            Icon(
              Icons.filter,
              color: Colors.black,
            )
          ],
        ),
       bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
    color:Colors.white,
    elevation: 5,
    shape: CircularNotchedRectangle(), //shape of notch
    notchMargin: 50, //notche margin between floating button and bottom appbar
    child: Row( //children inside bottom appbar
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left:10),
           
          child:IconButton(icon: Icon(Icons.location_pin, color: Colors.redAccent,), onPressed: () {},),
        ),
       IconButton(icon: Icon(Icons.favorite_border_outlined, color: Colors.black,), onPressed: () {},),
               IconButton(icon: Icon(Icons.auto_awesome_outlined,color: Colors.black,), onPressed: () {},),
        IconButton(icon: Icon(Icons.chat_rounded, color: Colors.black,), onPressed: () {},),
        IconButton(icon: Icon(Icons.person_outline,color: Colors.black,), onPressed: () {},),
      ],
    ),
  ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemCount: list_items.length,
              itemBuilder: (BuildContext context, int index) {
                return DiscoverCard(
                  image: list_items[index]['image'],
                  name: list_items[index]['name'],
                  distance: list_items[index]['distance'],
                );
              }),
        ));
  }
}
