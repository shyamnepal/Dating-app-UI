import 'package:datingapp/pages/discover/discover.dart';
import 'package:datingapp/pages/discover1.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  int _selectedIndex = 0;
  final List<Widget> _children = [MyApps()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_pin,
                  color: Colors.redAccent,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (Context) => const Discover(),
                        ));
                  },
                  child: Icon(
                    Icons.favorite_outline_rounded,
                    color: Colors.black,
                  ),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.auto_awesome_outlined,
                  color: Colors.black,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_rounded,
                  color: Colors.black,
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                title: Text('')),
          ],
        ),
      ),
    );
  }
}
