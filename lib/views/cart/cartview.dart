import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/cart/finishedads.dart';
import 'package:rentmything/views/myads/renteditems.dart';

class Cartview extends StatefulWidget {
  const Cartview({super.key});

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {

  final _cartTabPages = <Widget>[
    RentedItems(), 
    FinishedAds(),
  ];

  final _cartTabs = <Tab>[
    const Tab(text: 'Rented Items',),
    const Tab(text:'Finished'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _cartTabs.length,
      child: Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> BottomNavigationPage()));
          },
          child: Icon(Icons.arrow_circle_left,color: color1,)),
        title: Center(child: Text('My Cart',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),)),
        bottom: TabBar(tabs: _cartTabs,
        labelColor: color1,
        indicatorColor: color1,
        )
      ),
      body: TabBarView(children: _cartTabPages)
    ),
    );
  }
}