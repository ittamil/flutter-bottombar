import 'package:bottombar/navpages/cartview.dart';
import 'package:bottombar/navpages/homeview.dart';
import 'package:bottombar/navpages/settingsview.dart';
import 'package:flutter/material.dart';

class BottomView extends StatefulWidget {
  const BottomView({Key? key}) : super(key: key);

  @override
  _BottomViewState createState() => _BottomViewState();
}

class _BottomViewState extends State<BottomView> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CartView(),
    SettingsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:  Container(
              margin: const EdgeInsets.all(10),
              
    // decoration: BoxDecoration(
    //     // color: Colors.grey.shade200,
    //     // borderRadius: const BorderRadius.only(
    //     //     topLeft: Radius.circular(27),
    //     //     topRight: Radius.circular(27),
    //     //     bottomLeft: Radius.circular(27),
    //     //     bottomRight: Radius.circular(27),),
    //     ),
              child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: 'Cart',

                // backgroundColor: kSecondaryColor,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, color: Colors.white),
                label: 'Settings',
                // backgroundColor: kSecondaryColor,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 18,
            onTap: _onItemTapped,
            backgroundColor: Colors.black,
            elevation: 0),
      ),
    );
  }
}
