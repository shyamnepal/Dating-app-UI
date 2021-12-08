// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class Discover1 extends StatefulWidget {
//   const Discover1({Key? key}) : super(key: key);

//   @override
//   _Discover1State createState() => _Discover1State();
// }

// class _Discover1State extends State<Discover1> {
//   int photoIndex = 0;
//   List<String> photos = [
//     "images/girl3.jpg",
//     "images/gril2.jpg",
//     "images/image.jpg",
//     "images/img1.png",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: const Padding(
//             padding: EdgeInsets.only(left: 60),
//             child: Text(
//               "Discover",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 color: Colors.black,
//               ),
//             ),
//           ),
//           leading: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.refresh,
//                 color: Colors.black,
//               )),
//           actions: const [
//             Icon(
//               Icons.filter,
//               color: Colors.black,
//             )
//           ],
//         ),
//         body: Center(
//           child: CarouselSlider(
//               options: CarouselOptions(
//                   height: 250, autoPlay: true, enlargeCenterPage: true),
//               items: [
//                 MyImageView("images/girl3.jpg"),
//               ]),
//         ));
//   }
// }

// class MyImageView extends StatelessWidget {
//   String imgPath;

//   MyImageView(this.imgPath);

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//         margin: EdgeInsets.symmetric(horizontal: 5),
//         child: FittedBox(
//           fit: BoxFit.fill,
//           child: Image.asset(
//             imgPath,
//             color: Colors.black,
//           ),
//         ));
//   }
// }

import 'package:datingapp/components/navbar.dart';
import 'package:datingapp/pages/discover2.dart';
import 'package:flutter/material.dart';

// class MyApps extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: new MyHomePage(),
//     );
//   }
// }

class MyApps extends StatefulWidget {
  @override
  _MyAppsState createState() => new _MyAppsState();
}

class _MyAppsState extends State<MyApps> {
  int photoIndex = 0;

  List<String> photos = [
    "images/girl3.jpg",
    "images/gril2.jpg",
    "images/image.jpg",
    "images/img1.png",
  ];

  void _previousImage() {
    setState(() {
      photoIndex = photoIndex > 0 ? photoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      photoIndex = photoIndex < photos.length - 1 ? photoIndex + 1 : photoIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return new Scaffold(
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
              icon: const Icon(
                Icons.refresh,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "images/filter.png",
                height: 30,
                width: 20,
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          image: DecorationImage(
                              image: AssetImage(photos[photoIndex]),
                              fit: BoxFit.cover)),
                      height: 350.0,
                      width: 300.0,
                    ),
                    Positioned(
                      top: 300.0,
                      left: 25.0,
                      right: 25.0,
                      child: SelectedPhoto(
                          numberOfDots: photos.length, photoIndex: photoIndex),
                    )
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     RaisedButton(
              //       child: Text('Next'),
              //       onPressed: _nextImage,
              //       elevation: 5.0,
              //       color: Colors.green,
              //     ),
              //     SizedBox(width: 10.0),
              //     RaisedButton(
              //       child: Text('Prev'),
              //       onPressed: _previousImage,
              //       elevation: 5.0,
              //       color: Colors.blue,
              //     )
              //   ],
              // )

              Padding(
                padding: const EdgeInsets.only(top: 20, left: 100),
                child: Row(
                  children: const [
                    Icon(
                      Icons.close_sharp,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.favorite_outline,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.star_outline_sharp,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Eliza Williams, 23',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Row(
                  children: const [
                    Text("Art Manager "),
                    Icon(
                      Icons.location_pin,
                      size: 10,
                      color: Colors.redAccent,
                    ),
                    Text("10 miles")
                  ],
                ),
              ),
              Text(""),
              Text("Feminist,casts,other stuff that's mildly"),
              Text("interesting."),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Discover2()),
                  );
                },
                child: const Text('testButton'),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xffFD877B),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              Spacer(),
              NavBar(),
            ],
          ),
        ));
  }
}

class SelectedPhoto extends StatelessWidget {
  final int numberOfDots;
  final int photoIndex;

  SelectedPhoto({required this.numberOfDots, required this.photoIndex});

  Widget _inactivePhoto() {
    return new Container(
        child: new Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 3.0),
      child: Container(
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(4.0)),
      ),
    ));
  }

  Widget _activePhoto() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 3.0),
        child: Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, spreadRadius: 0.0, blurRadius: 2.0)
              ]),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == photoIndex ? _activePhoto() : _inactivePhoto());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
