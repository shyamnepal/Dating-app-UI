import 'package:datingapp/components/card2.dart';
import 'package:flutter/material.dart';

class AddPhoto extends StatefulWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  _AddPhotoState createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.red,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Add photos",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Column(
        children: [
          const Text(
            "Hold, drag and drop to reorder",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                const Icon(
                  Icons.image_outlined,
                  size: 40,
                  color: Color(0xffFD877B),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.camera_enhance_outlined,
                    size: 40,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/facebook.png",
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  // childAspectRatio: 1.1,
                ),
                itemCount: list_items.length,
                itemBuilder: (BuildContext context, int index) {
                  return DiscoverCard2(
                    image: list_items[index]['image'],
                    name: list_items[index]['name'],
                    distance: list_items[index]['distance'],
                  );
                }),
          ),
          //Spacer(),
          Material(
            elevation: 30,
            child: Container(
                height: 70,
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
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddPhoto()),
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
          )
        ],
      ),
    );
  }
}
