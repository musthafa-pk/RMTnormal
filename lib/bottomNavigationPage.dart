import 'package:flutter/material.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/cart/cartview.dart';
import 'package:rentmything/views/chat/chatview.dart';
import 'package:rentmything/views/home/homeview.dart';
import 'package:rentmything/views/myads/myadsview.dart';
import 'package:rentmything/views/profileview.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    ChatView(),
    MyAdsView(),
    Cartview(),
    ProfileView()
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
      bottomNavigationBar: BottomNavigationBar(
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(child: Image.asset('icons/home.png'),height: 24,width: 24,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(child: Image.asset('icons/msg.png'),height: 24,width: 24,),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(child: Image.asset('icons/ad.png'),height: 24,width: 24,),
            label: 'My Ads',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(child: Image.asset('icons/cart.png'),height: 24,width: 24,),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(child: Image.asset('icons/profile.png'),height: 24,width: 24,),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: color1,
        unselectedItemColor: Color.fromRGBO(0, 0, 0, 0.74),
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}
